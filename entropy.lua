function init (args)
    local needs = {}
    needs["payload"] = tostring(true)
    return needs
end

function match(args)
    p = SCPacketPayload()
    print(p)
    return 1  
end

