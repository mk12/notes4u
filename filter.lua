-- Copyright 2022 Mitchell Kember. Subject to the MIT License.

local function render_code_as_math(doc)
    -- We have to use a temporary file because Lua does not support
    -- bidirectional communication with a subprocess:
    -- http://lua-users.org/lists/lua-l/2007-10/msg00189.html
    local tmp_name = os.tmpname()
    local math = assert(io.popen("deno run math.ts > " .. tmp_name, "w"))
    doc:walk({
        traverse = "topdown",
        Div = function(el)
            return nil, false
        end,
        Code = function(el)
            el.attr = { inline_math = true }
        end,
    })
    doc:walk({
        Code = function(el)
            local input = el.text
            if not el.inline_math then
                -- This is not part of AsciiMath but math.ts handles it.
                input = "displaystyle " .. input
            end
            assert(not input:find("\n"))
            assert(math:write(input .. "\n"))
        end
    })
    math:close()
    local tmp = assert(io.open(tmp_name, "r"))
    doc = doc:walk({
        Code = function(el)
            local raw = pandoc.RawInline("html", tmp:read())
            -- We remove this span in writer.lua.
            return pandoc.Span(raw, { kind = "math" })
        end
    })
    tmp:close()
    os.remove(tmp_name)
    return doc
end

function Pandoc(doc)
    -- Interpret CodeBlock as centered content rather than code. This needs to
    -- happen first to allow the block's content to be processed below.
    doc = doc:walk({
        CodeBlock = function(el)
            return pandoc.Div(pandoc.read(el.text).blocks, { class = "center" })
        end,
    })
    -- Interpret BlockQuote as a note set off from the main content.
    doc = doc:walk({
        BlockQuote = function(el)
            return pandoc.Div(el.content, { class = "note" })
        end
    })
    -- Interpret Code as math, and render with math.ts.
    doc = render_code_as_math(doc)

    return doc
end
