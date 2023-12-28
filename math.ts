// Copyright 2022 Mitchell Kember. Subject to the MIT License.

// This script converts each line of stdin from AsciiMath to MathML.

import { AsciiMath } from "asciimath-parser";
import temml from "temml";

const asciimath = new AsciiMath();

for await (const line of console) {
    const ascii = line
        // Avoid putting punctuation in superscripts.
        .replaceAll(/\.$/g, " .");
    const tex =
        asciimath.toTex(ascii, { display: true })
            // Manual newline.
            .replaceAll("\\ n", "\\\\")
            // AsciiMath tries to make d in dx straight for some reason.
            .replaceAll("\\text{d}", "d")
            // I prefer to type "∆" (Option+J on macOS) but it renders wrong.
            .replaceAll("∆", "\\Delta{}")
            // Make brackets non-stretchy by default.
            .replaceAll(/\\(?:left|right)([()\[\]])/g, "$1")
            // Reinterpret "(:" and ":)" as stretchy instead of angled brackets.
            .replaceAll("\\left\\langle", "\\left(")
            .replaceAll("\\right\\rangle", "\\right)")
            // Don't slant inequalities.
            .replaceAll(/(\\[lg]e)qslant/g, "$1")
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
        // Remove spacing around arrows under limits.
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
        // Add class to trailing puncutation.
        .replaceAll(
            "<mi>.</mi></math>",
            "<mtext class=\"math-punct\">.</mtext></math>",
        )
        .replaceAll(
            "<mo separator=\"true\" rspace=\"0em\">,</mo></math>",
            "<mtext class=\"math-punct\">,</mtext></math>",
        )
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
