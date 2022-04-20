// Copyright 2022 Mitchell Kember. Subject to the MIT License.

// deno-lint-ignore-file no-explicit-any

// This Deno script converts each line of stdin from AsciiMath to KaTeX HTML,
// which uses katex.css classes and includes hidden MathML for accessibility.

import { readLines } from "https://deno.land/std@0.134.0/io/mod.ts";
import AsciiMathParser from "https://raw.githubusercontent.com/christianp/asciimath2tex/24287117ca5f44ccb13915586254f470d548645c/asciimath2tex.js";
import katex from "https://cdn.jsdelivr.net/npm/katex@0.15.3/dist/katex.mjs";

// Ignore certain warnings from KaTeX.
const oldConsoleWarn = console.warn;
console.warn = function (message: string) {
  if (message.startsWith("No character metrics for")) {
    return;
  }
  oldConsoleWarn(message);
};

const AsciiMath = new AsciiMathParser();

for await (const line of readLines(Deno.stdin)) {
  const tex = "\\displaystyle " +
    AsciiMath.parse(line)
      // This is what AsciiMath parses "newline" as.
      .replaceAll("\\ne w l \\in e", "\\\\ ")
      // This is what AsciiMath parses "negthinsp" as.
      .replaceAll("\\neg t h \\in s p", "\\! ")
      // AsciiMath treats operators after "f" and "g" weirdly.
      .replaceAll(/([fg]){(\+|\\circ|\\pm)}/g, "$1 $2")
      .replaceAll(/([fg]){- ([^}]+)}/g, "$1 - $2")
      // AsciiMath doens't understand double prime.
      .replaceAll("{'} '", "{''}")
      // AsciiMath puts too much space between primes and the opening paren.
      .replaceAll(/'} \\left\s*\((.*?)\\right\s*\)/g, "'} ($1)")
      // AsciiMath collides the vector arrow with the prime mark.
      .replaceAll(/\\vec{(.)} '_{/g, "\\vec{$1}^{\\,\\prime}_{")
      // Use \overrightharpoon for two letter vectors.
      .replaceAll(/\\vec{(. .)}/g, "\\overrightharpoon{$1}")
      // I prefer to type "∆" because it's easy on macOS (Option+J), but KaTeX
      // doesn't handle these Unicode characters correctly.
      .replaceAll("∆", "\\Delta{}");
  let html;
  try {
    html = katex.renderToString(tex, {
      displayMode: false,
      throwOnError: true,
      strict: (errorCode: string, _errorMsg: string, token: any) => {
        // These give warnings but seem to render fine.
        if (errorCode === "unknownSymbol" && ["º", "⋅"].includes(token.text)) {
          return "ignore";
        }
        return "error";
      },
    });
  } catch (error) {
    throw new Error(`Input: ${line}\n\nTeX: ${tex}\n\nError: ${error}`);
  }
  console.log(
    html
      // There is no need to include xmlns:
      // https://www.w3.org/TR/MathML3/chapter6.html#interf.html
      .replace('<math xmlns="http://www.w3.org/1998/Math/MathML">', "<math>")
      // Add a class to "and" connectives so we can style them to match the font
      // of body text without splitting up into two equations.
      .replaceAll(
        '<span class="mord">and</span>',
        '<span class="mord math-and">and</span>',
      )
      // All output must be on a single line.
      .replaceAll("\n", " "),
  );
}
