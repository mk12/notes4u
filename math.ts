// Copyright 2022 Mitchell Kember. Subject to the MIT License.

// deno-lint-ignore-file no-explicit-any

// This Deno script converts each line of stdin from AsciiMath to KaTeX HTML,
// which uses katex.css classes and includes hidden MathML for accessibility.

import { readLines } from "https://deno.land/std@0.134.0/io/mod.ts";
import AsciiMathParser from "https://raw.githubusercontent.com/christianp/asciimath2tex/24287117ca5f44ccb13915586254f470d548645c/asciimath2tex.js";
import katex from "https://cdn.jsdelivr.net/npm/katex@0.15.3/dist/katex.mjs";

// Ignore certain warnings from KaTeX.
const oldConsoleWarn = console.warn;
console.warn = function(message: string) {
  if (message.startsWith("No character metrics for")) {
    return;
  }
  oldConsoleWarn(message);
}

const AsciiMath = new AsciiMathParser();

for await (const line of readLines(Deno.stdin)) {
  let tex = line.startsWith("displaystyle")
    ? "\\displaystyle{}" +
      AsciiMath.parse(line.slice("displaystyle".length).trim())
    : AsciiMath.parse(line.trim());
  tex = tex
    // AsciiMath doens't understand double prime.
    .replaceAll("{'} '", "{''}")
    // AsciiMath puts too much space between primes and the opening paren.
    .replaceAll(/'} \\left\s*\((.*?)\\right\s*\)/g, "'} ($1)")
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
    throw new Error(`AsciiMath: ${line}\n\nTeX: ${tex}\n\nError: ${error}`);
  }
  // There is no need to include xmlns:
  // https://www.w3.org/TR/MathML3/chapter6.html#interf.html
  html = html.replace(
    '<math xmlns="http://www.w3.org/1998/Math/MathML">',
    "<math>"
  );
  if (line == "displaystyle |vec u xx vec v| = |vec u||vec v|sin theta") {
    console.warn(`Line: ${line}\n\nTeX: ${tex}\n\n Html: ${html}\n`);
  }
  console.log(html.replaceAll("\n", " "));
}
