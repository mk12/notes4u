// Copyright 2022 Mitchell Kember. Subject to the MIT License.

// This script converts each line of stdin from AsciiMath to MathML.

import { AsciiMath } from "asciimath-parser";
import temml from "temml";

const asciimath = new AsciiMath();

for await (const line of console) {
    const tex =
        asciimath.toTex(line, { display: true })
            // AsciiMath tries to make d in dx straight for some reason.
            .replaceAll("\\text{d}", "d")
            // I prefer to type "∆" (Option+J on macOS) but it renders wrong.
            .replaceAll("∆", "\\Delta{}")
            // Stretchy parentheses around a single letter are weird in Safari.
            .replaceAll(/\\left\( (.) \\right\)/g, "($1)")
        // // Allow line breaks around spaced text like "and".
        // .replaceAll(
        //     /(\\quad)(\\text{.+?})(\\quad)/g,
        //     "\\allowbreak$1\\allowbreak$2\\allowbreak$3\\allowbreak",
        // )
        ;
    let html;
    try {
        html = temml.renderToString(tex, {
            displayMode: false,
            throwOnError: true,
            strict: false,
            annotate: false,
            xml: false,
            wrap: "tex",
        });
    } catch (error) {
        throw new Error(`Input: ${line}\n\nTeX: ${tex}\n\nError: ${error}`);
    }
    html = html
        .replace("<mstyle scriptlevel=\"0\" displaystyle=\"true\">", "")
        .replace("</mstyle>", "");
    if (/<mfrac|<munder|<mover|<munderover|∑/.test(html)) {
        html = html.replace("<math", "<math displaystyle=\"true\"");
    }
    html = html
        // Remove empty tags.
        .replaceAll("<mrow></mrow>", "")
        .replaceAll("<mo></mo>", "")
        // Remove mrows in msqrt.
        .replaceAll(/<msqrt><mrow>(.*?)<\/mrow><\/msqrt>/g, "<msqrt>$1</msqrt>")
        // Remove mrows with one child.
        .replaceAll(/<mrow>(<(?!mrow)[^>]+>[^<>]+<\/[^>]+>)<\/mrow>/g, "$1")
        // Remove Temml classes.
        .replaceAll(/ class=\"tml-[^"]+\"/g, "")
        // Temml emits the Unicode fraction slash character for slashes in
        // AsciiMath quoted text, e.g. "kJ/mol". Change back to ASCII slash.
        .replaceAll("⁄", "/")
        // Temml emits the Unicode "divides" character, which doesn't stretch
        // correctly. Change back to ASCII pipe.
        .replaceAll("∣", "|")
        // Dots should be mi, not mo.
        .replaceAll(/<mo>(⋯|…)<\/mo>/g, "<mi>$1</mi>")
        // Remove spacing under limits.
        .replaceAll(
            /(<mi>lim<\/mi>.*?)<mo>→<\/mo>/g,
            "$1<mo lspace=\"0\" rspace=\"0\">→<\/mo>",
        )
        // Temml does a weird transformation on vector arrows that I don't like.
        .replaceAll(
            " style=\"transform:scale(0.75) translate(10%, 30%);\">",
            " lspace=\"0\" rspace=\"0\">"
        )
        // Make vector arrows stretchy when over two points.
        .replaceAll(
            "</mrow><mo stretchy=\"false\" lspace=\"0\" rspace=\"0\">→</mo></mover>",
            "</mrow><mo lspace=\"0\" rspace=\"0\">→</mo></mover>",
        )
        // Make [ and ] non-stretchy (used for chemical concentrations).
        .replaceAll(/<mo([^>]*>[\[\]]<\/mo>)/g, "<mo stretchy=\"false\"$1")
        // Fix spacing for signs. Temml does not emit form="prefix".
        // TODO(https://github.com/ronkok/Temml/issues/31): Remove when fixed.
        .replaceAll(/([^\)\]]<\/mo>(?:<\/mrow>)?(?:<mrow>)?)<mo>(−|-|\+)<\/mo>/g, "$1<mo form=\"prefix\">$2<\/mo>")
        .replaceAll(/<mo rspace="0em">(−|-|\+)<\/mo><\/mrow>/g, "<mo lspace=\"0\" rspace=\"0\" form=\"suffix\">$1</mo></mrow>")
        // Reduce space after trig functions.
        .replaceAll(
            /(<mi>[a-z]{3}<\/mi>)<mo>⁡<\/mo><mspace width="0.1667em"><\/mspace>/g,
            "$1<mspace width=\"0.08335em\"><\/mspace>",
        )
        // All output must be on a single line.
        .replaceAll("\n", " ");
    console.log(html);
}
