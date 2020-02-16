function init (args)
    local needs = {}
    needs["type"] = "DNS"
    return needs
end

function match(args)
    dns_query = DnsGetQueries();
    print("loop")
    print(tostring(dns_query))
    print(args)
    if dns_query ~= nil then
        for n, t in pairs(dns_query) do
            rrname = t["rrname"]
            rrtype = t["type"]

            print ("QUERY: " .. ts .. " " .. rrname .. " [**] " .. rrtype .. " [**] " ..
                   "TODO" .. " [**] " .. srcip .. ":" .. sp .. " -> " ..
                   dstip .. ":" .. dp)
        end
    end
    return 1    
end

