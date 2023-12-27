// Copyright 2022 Mitchell Kember. Subject to the MIT License.

// This script converts each line of stdin from AsciiMath to MathML via MathJax.

import { AsciiMath } from "mathjax-full/js/input/asciimath";
import { HTMLDocument } from "mathjax-full/js/handlers/html/HTMLDocument";
import { liteAdaptor } from "mathjax-full/js/adaptors/liteAdaptor";
import { STATE } from "mathjax-full/js/core/MathItem";
import { SerializedMmlVisitor } from "mathjax-full/js/core/MmlTree/SerializedMmlVisitor";

const asciimath = new AsciiMath({});
const html = new HTMLDocument('', liteAdaptor(), { InputJax: asciimath });
const visitor = new SerializedMmlVisitor();
const toMathML = node => visitor.visitTree(node, html);

for await (const line of console) {
    const tex = "\\displaystyle " +
        AsciiMath.parse(line)
            // This is what AsciiMath parses "newline" as.
            .replaceAll("\\ne w l \\in e", "\\\\ ")
            // This is what AsciiMath parses "negthinsp" as.
            .replaceAll("\\neg t h \\in s p", "\\! ")
            // AsciiMath treats operators after "f" and "g" weirdly.
            .replaceAll(/([fg]){(\+|\\circ|\\pm)}/g, "$1 $2")
            .replaceAll(/([fg]){- (.+?)}/g, "$1 - $2")
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
            .replaceAll("∆", "\\Delta{}")
            // Allow line breaks around spaced text like "and".
            .replaceAll(
                /(\\quad)(\\text{.+?})(\\quad)/g,
                "\\allowbreak$1\\allowbreak$2\\allowbreak$3\\allowbreak",
            );
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
            // Add a class to "and" and "or" connectives so we can style them to match
            // the font of body text without splitting up into two equations.
            .replaceAll(
                /<span class="mord">(and|or)<\/span>/g,
                '<span class="mord math-body-text">$1</span>',
            )
            // All output must be on a single line.
            .replaceAll("\n", " "),
    );
}
