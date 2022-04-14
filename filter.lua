-- Copyright 2022 Mitchell Kember. Subject to the MIT License.

local function render_code_as_math_in_doc(doc)
    -- We have to use a temporary file because Lua does not support
    -- bidirectional communication with a subprocess:
    -- http://lua-users.org/lists/lua-l/2007-10/msg00189.html
    local tmp_name = os.tmpname()
    local math = assert(io.popen("deno run math.ts > " .. tmp_name, "w"))
    doc:walk({
        Code = function(el)
            local input = (
                el.text
                :gsub("∆", "Delta")
            )
            assert(math:write(input .. "\n"))
        end
    })
    math:close()
    local tmp = assert(io.open(tmp_name, "r"))
    doc = doc:walk({
        Code = function(el)
            return pandoc.RawInline(FORMAT, tmp:read())
        end
    })
    tmp:close()
    os.remove(tmp_name)
    return doc
end

function Pandoc(doc)
    -- Interpret indented blocks as centered content rather than code, usually
    -- used for mathematical or chemical equations. We must do this first, since
    -- walks before this would not visit CodeBlock content.
    doc = doc:walk({
        CodeBlock = function(el)
            return pandoc.Div(pandoc.read(el.text).blocks, { class = "center" })
        end,
    })
    -- Interpret block quotes as notes set off from the main content.
    doc = doc:walk({
        BlockQuote = function(el)
            return pandoc.Div(el.content, { class = "note" })
        end
    })
    -- Interpret inline code as math, and render with math.ts.
    doc = render_code_as_math_in_doc(doc)

    -- TODO
    print(pandoc.write(doc, FORMAT))

    -- Prevent pandoc from writing the document.
    os.exit(0)
end
