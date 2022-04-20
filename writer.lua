-- Copyright 2022 Mitchell Kember. Subject to the MIT License.

function Writer(doc, options)
    doc = transform(doc)
    if doc.meta.home then
        write_home(doc, options)
    else
        write_notes(doc, options)
    end
    -- Prevent pandoc from trying to print the returned doc.
    os.exit(0)
end

-- Writes the top-level index.html.
function write_home(doc, options)
    local path = doc.meta.dest_dir .. "/" .. "index.html"
    local file = assert(io.open(path, "w"))
    local html = pandoc.write(doc, "html", options)
    assert(file:write(html))
    file:close()
end

-- Writes all HTML files for a course.
function write_notes(doc, options)
    local function navigator()
        local p, t, n
        return function(item)
            p, t, n = t, n, item
            return { prev = p, this = t, next = n }
        end
    end

    local function scanner(blocks, push)
        local i = 1
        return function()
            local result = {}
            local first = i
            while i <= #blocks do
                local el = blocks[i]
                if el.t == "Header" then
                    if i == first then
                        -- Make sure the first header on the page is h1.
                        el.level = 1
                    elseif el.level > 2 then
                        -- Only sections have subheaders. They should be h2.
                        assert(el.level == 3)
                        el.level = 2
                    else
                        -- We've reached the end of this page.
                        local nav = push({
                            file = el.identifier .. ".html",
                            name = pandoc.utils.stringify(el),
                        })
                        return pandoc.Blocks(result), nav, el.level
                    end
                end
                table.insert(result, el)
                i = i + 1
            end
            return pandoc.Blocks(result), push(nil), 0
        end
    end

    local push = navigator()
    local scan = scanner(doc.blocks, push)
    local home = { file = "../index.html" }
    local root = { file = "index.html" }

    local write, write_course, write_unit, write_section

    function write(kind, blocks, nav, up, toc)
        local meta = {
            title = "TODO",
            prev = nav.prev,
            up = up,
            next = nav.next,
            toc = toc,
            course_name = doc.meta.course_name,
            course_code = doc.meta.course_code,
            root = "../",
        }
        meta[kind] = true
        local subdoc = pandoc.Pandoc(blocks, meta)
        local path = doc.meta.dest_dir .. "/" .. nav.this.file
        local file = assert(io.open(path, "w"))
        local html = pandoc.write(subdoc, "html", options)
        assert(file:write(html))
        file:close()
    end

    function write_course(up)
        local blocks, nav, level = scan()
        local toc = {}
        local page
        while level == 1 do
            page, level = write_unit(nav.this)
            table.insert(toc, page)
        end
        write("course", blocks, nav, up, toc)
    end

    function write_unit(up)
        local blocks, nav, level = scan()
        table.insert(blocks[1].classes, "unit-heading")
        local toc = {}
        local page
        while level == 2 do
            page, level = write_section(nav.this)
            table.insert(toc, page)
        end
        write("unit", blocks, nav, up, toc)
        local page = nav.this
        page.toc = toc
        return page, level
    end

    function write_section(up)
        local blocks, nav, level = scan()
        table.insert(blocks[1].classes, "section-heading")
        write("section", blocks, nav, up, nil)
        return nav.this, level
    end

    push(root)
    write_course(home)
end

-- Transforms doc according to the custom Markdown dialect used by this project.
function transform(doc)
    -- CodeBlock = centered text. Do this first so that we process the block's
    -- content as markup rather than raw code in the transformations below. We
    -- convert to <p> at the end.
    doc = doc:walk({
        CodeBlock = function(el)
            local blocks = pandoc.read(el.text).blocks
            return pandoc.Div(blocks, { render = "center"})
        end,
    })
    -- BlockQuote = aside. We convert to <aside> at the end.
    doc = doc:walk({
        BlockQuote = function(el)
            return pandoc.Div(el.content, { render = "aside" })
        end,
    })
    -- Various textual substitutions.
    doc = doc:walk({
        Inlines = function(inlines)
            -- Convert open en dashes to closed em dashes. In the Markdown we
            -- use "--", which the default-enabled "smart" extension of Pandoc's
            -- markdown reads as an en dash.
            inlines = substitute(
                inlines,
                {" ", "–", " "},
                {pandoc.Str("—")}
            )
            -- Add no-break spaces around multipication signs.
            inlines = substitute(
                inlines,
                {" ", "×", " "},
                {pandoc.Str("\u{00a0}×\u{00a0}")}
            )
            -- Add no-break spaces before degree signs, and wrap them in a span
            -- that raises them a bit because they look strange in Equity
            -- otherwise (they're aligned with numbers, not capital letters).
            inlines = split(inlines, "º")
            inlines = substitute(
                inlines,
                {" ", "º"},
                {
                    pandoc.Str("\u{00a0}"),
                    pandoc.Span({pandoc.Str("º")}, { class = "degree" }),
                }
            )
            return inlines
        end,
        DefinitionList = function(el)
            for i = 1, #el.content do
                el.content[i][1] = el.content[i][1]:walk({
                    -- Add a span around parentheses in definition terms to
                    -- un-italicize them (otherwise math inside often collides).
                    Inlines = function(inlines)
                        inlines = split(inlines, "[%(%)]")
                        inlines = substitute(
                        inlines,
                            {"("},
                            {pandoc.Span(pandoc.Str("("), { class = "parens" })}
                        )
                        inlines = substitute(
                            inlines,
                            {")"},
                            {pandoc.Span(pandoc.Str(")"), { class = "parens" })}
                        )
                        return inlines
                    end,
                })
            end
            return el
        end,
    })
    -- Render all math.
    doc = render_code_as_math(doc)
    -- Embed SVG files. Do this after math so that captions can use math.
    -- Operate on Para rather than Image so that we can return a RawBlock
    -- (rather than RawInline, which would get wrapped in <p>).
    doc = doc:walk({
        Para = function(el)
            if not (#el.content == 1 and el.content[1].t == "Image") then
                return
            end
            el = el.content[1]
            ext = ".svg"
            if el.src:sub(-#ext) ~= ext then
                return
            end
            local path = doc.meta.svg_dir .. "/" .. el.src
            local file = assert(io.open(path, "r"))
            local svg = assert(file:read("a"))
            file:close()
            local content = (
                "<figure>"
                .. recolor_svg(svg)
                .. "<figcaption>"
                .. pandoc.write(pandoc.Pandoc({el.caption}), "html")
                .. "</figcaption>"
                .. "</figure>"
            )
            return pandoc.RawBlock("html", content)
        end,
    })
    -- Render custom divs. Do this last, after content has been processed.
    doc = doc:walk({
        Div = function(el)
            if el.attributes.render == "center" then
                for i = 1, #el.content do
                    assert(el.content[i].t == "Para")
                    local no_para = pandoc.Plain(el.content[i].content)
                    el.content[i] = pandoc.RawBlock("html",
                        '<p class="center">'
                        .. pandoc.write(pandoc.Pandoc({no_para}), "html")
                        .. '</p>'
                    )
                end
                return el.content
            elseif el.attributes.render == "aside" then
                return pandoc.RawBlock("html",
                    "<aside>"
                    .. pandoc.write(pandoc.Pandoc(el.content), "html")
                    .. "</aside>"
                )
            end
        end,
    })
    return doc
end

-- Helper to split about pandoc.Str around delimiters.
function split(inlines, delimiter)
    return inlines:walk({
        Str = function(el)
            local result = {}
            local function append(x, y)
                local str = el.text:sub(x, y)
                if str ~= "" then
                    table.insert(result, str)
                end
            end
            local init = 1
            while init <= #el.text do
                local i, j = el.text:find(delimiter, init)
                if not i then
                    append(init)
                    break
                end
                append(init, i - 1)
                append(i, j)
                init = j + 1
            end
            return result
        end,
    })
end

-- Helper to subsitute patterns in inlines.
function substitute(inlines, pattern, replacement)
    local n = #pattern
    local function match(offset)
        for i = 1, n do
            want = pattern[i]
            el = inlines[offset+i-1]
            if want == " " then
                if el.t ~= "Space" then
                    return false
                end
            else
                if el.t ~= "Str" or el.text ~= want then
                    return false
                end
            end
        end
        return true
    end
    local replace = {}
    local i = 1
    while i <= #inlines - n + 1 do
        if match(i) then
            replace[i] = true
            i = i + n
        else
            i = i + 1
        end
    end
    if next(replace) == nil then
        return inlines
    end
    local result = {}
    i = 1
    while i <= #inlines do
        if replace[i] then
            for _, el in ipairs(replacement) do
                table.insert(result, el)
            end
            i = i + n
        else
            table.insert(result, inlines[i])
            i = i + 1
        end
    end
    return pandoc.Inlines(result)
end

-- Renders code as math in doc using math.ts.
function render_code_as_math(doc)
    -- We have to use a temporary file because Lua does not support
    -- bidirectional communication with a subprocess:
    -- http://lua-users.org/lists/lua-l/2007-10/msg00189.html
    local tmp_name = os.tmpname()
    local math = assert(io.popen("deno run math.ts > " .. tmp_name, "w"))
    -- Pass AsciiMath input to math.ts.
    doc:walk({
        Code = function(el)
            assert(not el.text:find("\n"))
            assert(math:write(el.text .. "\n"))
        end,
    })
    math:close()
    -- Read KaTex HTML output from math.ts.
    local tmp = assert(io.open(tmp_name, "r"))
    doc = doc:walk({
        Code = function(el)
            return pandoc.RawInline("html", tmp:read())
        end,
    })
    tmp:close()
    os.remove(tmp_name)
    return doc
end

-- Changes SVG markup to be dark-mode friendly.
function recolor_svg(svg)
    return (
        svg
        :gsub('"#000"', '"currentColor"')
        :gsub('fill="#FFF"', 'class="svg-fill-bg"')
        :gsub('fill="#CCC"', 'class="svg-fill-gray"')
        :gsub('stroke="#CCC"', 'class="svg-stroke-gray"')
    )
end
