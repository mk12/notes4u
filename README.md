# Notes4U

Notes4U is a website containing notes I took in the 2013/2014 school year at [Sir Wilfrid Laurier Secondary School][sirwil]:

- SCH4U: Chemistry, Grade 12, University Preparation
- SPH4U: Physics, Grade 12, University Preparation
- MCV4U: Calculus and Vectors, Grade 12, University Preparation

You can find more information on the OCDSB course listings for [math] and [science].

I host the website at https://mitchellkember.com/notes4u.

## Build

To build the website yourself:

1. `git clone git@github.com:mk12/notes4u`
2. `cd notes4u && mkdir fonts`
3. Buy Equity and Concourse from https://mbtype.com.
4. Copy the WOFF2 files into `fonts/`.
5. `make -j`
6. Open out/notes4u/index.html.

## Dependencies

- [Pandoc] 3+
- [Bun] and [MathJax] for rendering math
- [v.Nu] for validating HTML

## License

© 2022 Mitchell Kember

Notes4U is available under the MIT License; see [LICENSE](LICENSE.md) for details.

[sirwil]: https://sirwilfridlaurierss.ocdsb.ca
[math]: https://ocdsb.ca/secondary/programs/secondary_school_courses/mathematics
[science]: https://ocdsb.ca/secondary/programs/secondary_school_courses/science
[Pandoc]: https://pandoc.org
[Bun]: https://bun.sh
[MathJax]: https://www.mathjax.org
[v.Nu]: https://validator.github.io/validator
