-- Copyright 2022 Mitchell Kember. Subject to the MIT License.

function Writer(doc, options)
    local destdir = doc.meta.destdir
    local page = "course"
    local slug = "index"
    local pending = {}

    local function flush()
        local meta = {}
        local subdoc = pandoc.Pandoc(pending, meta)
        pending = {}
        local path = destdir .. "/" .. slug .. ".html"
        local file = assert(io.open(path, "w"))
        local html = pandoc.write(subdoc, "html", options)
        file:write(html)
        file:close()
    end

    for i, el in ipairs(doc.blocks) do
        if el.t == "Header" and el.level <= 2 then
            flush()
            page = ({"unit", "section"})[el.level]
            slug = el.identifier
        else
            table.insert(pending, el)
        end
    end
    flush()

    -- Prevent pandoc from trying to print the returned doc.
    os.exit(0)
end
