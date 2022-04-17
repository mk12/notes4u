-- Copyright 2022 Mitchell Kember. Subject to the MIT License.

function Reader(input, options)
    local markdown = (
        tostring(input)
        -- Change open en dash to closed em dash.
        :gsub(" %-%- ", "---")
        -- Put nonbreaking spaces around multiplication signs.
        :gsub(" × ", "&nbsp;×&nbsp;")
        -- Put nonbreaking spaces before degree signs.
        :gsub(" º", '&nbsp;º')
        -- Wrap degree signs in styled spans.
        :gsub("º", '<span class="degree">º</span>')
    )
    return pandoc.read(markdown, "markdown+ascii_identifiers", options)
end
