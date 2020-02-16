function init (args)
    local needs = {}
    needs["type"] = "packet" --tostring(true)
    return needs
end

function match(args)
    a = tostring(args)
    print(a)
    --[[
    if #a > 0 then
        if a:find("^POST%s+/.*%.php%s+HTTP/1.0$") then
            return 1
        end
    end
    --]]

    return 0
end

return 0


