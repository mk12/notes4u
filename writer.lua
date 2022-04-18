-- Copyright 2022 Mitchell Kember. Subject to the MIT License.

local function process_math(blocks)
    local found = false
    return blocks:walk({
        Span = function(el)
            if el.attributes.kind == "math" then
                found = true
                return el.content
            end
        end,
    }), found
end

local function slider()
    local p, t, n
    return function(item)
        p, t, n = t, n, item
        return { prev = p, this = t, next = n }
    end
end

local function scanner(blocks, slide)
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
                    -- Only section pages have subheaders. They should be h2.
                    assert(el.level == 3)
                    el.level = 2
                else
                    -- We've reached the end of this page.
                    local location = slide({
                        file = el.identifier .. ".html",
                        name = pandoc.utils.stringify(el),
                    })
                    return pandoc.Blocks(result), location, el.level
                end
            end
            table.insert(result, el)
            i = i + 1
        end
        return pandoc.Blocks(result), slide(nil), 0
    end
end

function Writer(doc, options)
    local slide = slider()
    local scan = scanner(doc.blocks, slide)
    local root = { file = "index.html", name = nil }
 
    local write, write_course, write_unit, write_section

    write = function(kind, blocks, location, toc)
        blocks, math = process_math(blocks)
        local meta = {
            title = "MCV4U Notes",
            math = math,
            prev = location.prev,
            up = kind ~= "course" and root,
            next = location.next,
            toc = toc,
            course_title = "Calculus & Vectors",
            course_code = "MCV4U",
        }
        meta[kind] = true
        local subdoc = pandoc.Pandoc(blocks, meta)
        local path = doc.meta.destdir .. "/" .. location.this.file
        local file = assert(io.open(path, "w"))
        local html = pandoc.write(subdoc, "html", options)
        assert(file:write(html))
        file:close()
    end
    
    write_course = function()
        local blocks, location, level = scan()
        local toc = {}
        local page
        while level == 1 do
            page, level = write_unit()
            table.insert(toc, page)
        end
        write("course", blocks, location, toc)
    end

    write_unit = function()
        local blocks, location, level = scan()
        table.insert(blocks[1].classes, "unit-heading")
        local toc = {}
        local page
        while level == 2 do
            page, level = write_section()
            table.insert(toc, page)
        end
        write("unit", blocks, location, toc)
        local page = location.this
        page.toc = toc
        return page, level
    end

    write_section = function()
        local blocks, location, level = scan()
        table.insert(blocks[1].classes, "section-heading")
        write("section", blocks, location, nil)
        return location.this, level
    end

    slide(root)
    write_course()

    -- Prevent pandoc from trying to print the returned doc.
    os.exit(0)
end
