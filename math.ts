// Copyright 2022 Mitchell Kember. Subject to the MIT License.

// This script converts each line of stdin from AsciiMath to MathML.

import { AsciiMath } from "asciimath-parser";
import temml from "temml";

const asciimath = new AsciiMath();

for await (const line of console) {
    const tex =
        asciimath.toTex(line, { display: false })
            // // This is what AsciiMath parses "newline" as.
            // .replaceAll("\\ne w l \\in e", "\\\\ ")
            // // AsciiMath treats operators after "f" and "g" weirdly.
            // .replaceAll(/([fg]){(\+|\\circ|\\pm)}/g, "$1 $2")
            // .replaceAll(/([fg]){- (.+?)}/g, "$1 - $2")
            // // AsciiMath doens't understand double prime.
            // .replaceAll("{'} '", "{''}")
            // // AsciiMath puts too much space between primes and the opening paren.
            // .replaceAll(/'} \\left\s*\((.*?)\\right\s*\)/g, "'} ($1)")
            // // AsciiMath collides the vector arrow with the prime mark.
            // .replaceAll(/\\vec{(.)} '_{/g, "\\vec{$1}^{\\,\\prime}_{")
            // // Use \overrightharpoon for two letter vectors.
            // .replaceAll(/\\vec{(. .)}/g, "\\overrightharpoon{$1}")
            // I prefer to type "∆" because it's easy on macOS (Option+J), but Temml
            // doesn't handle these Unicode characters.
            .replaceAll("∆", "\\Delta{}")
        // // Allow line breaks around spaced text like "and".
        // .replaceAll(
        //     /(\\quad)(\\text{.+?})(\\quad)/g,
        //     "\\allowbreak$1\\allowbreak$2\\allowbreak$3\\allowbreak",
        // )
        ;
    // console.log(tex);
    let html;
    try {
        html = temml.renderToString(tex, {
            displayMode: false,
            throwOnError: true,
            strict: true,
            annotate: false,
            xml: false,
        });
    } catch (error) {
        throw new Error(`Input: ${line}\n\nTeX: ${tex}\n\nError: ${error}`);
    }
    if (/<mfrac|∑/.test(html))
        html = html.replace("<math", "<math displaystyle=\"true\"");
    html = html
        // Remove empty mrows.
        .replaceAll("<mrow></mrow>", "")
        // Remove redundant mrows.
        .replaceAll(/<mrow>(<(?!mrow)[^>]+>[^<>]+<\/[^>]+>)<\/mrow>/g, "$1")
        // Add a class to "and" and "or" connectives so we can style them to match
        // the font of body text without splitting up into two equations.
        // .replaceAll(
        //     /<span class="mord">(and|or)<\/span>/g,
        //     '<span class="mord math-body-text">$1</span>',
        // )
        // Temml emits the Unicode fraction slash character for slashes in
        // AsciiMath quoted text, e.g. "kJ/mol". Change back to ASCII slash.
        .replaceAll("⁄", "/")
        // Temml emits the Unicode "divides" character, which doesn't stretch
        // correctly. Change back to ASCII pipe.
        .replaceAll("∣", "|")
        // Make [ and ] non-stretchy (used for chemical concentrations).
        .replaceAll(/<mo([^>]*>[\[\]]<\/mo>)/g, "<mo stretchy=\"false\"$1>")
        // Fix spacing for signs. Temml does not emit form="prefix".
        .replaceAll(/(<\/mo>(?:<\/mrow>)?(?:<mrow>)?)<mo>(−|-|\+)<\/mo>/g, "$1<mo form=\"prefix\">$2<\/mo>")
        // All output must be on a single line.
        .replaceAll("\n", " ");
    console.log(html);
}
