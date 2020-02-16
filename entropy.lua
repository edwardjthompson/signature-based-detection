function init (args)
    local needs = {}
    needs["dns.rrname"] = tostring(true)
    return needs
end

function match(args)
    -- print(args)
    dns_query = DnsGetQueries();
    if dns_query ~= nil then
        for n, t in pairs(dns_query) do
            rrname = t["rrname"]
            rrtype = t["type"]

            print ("QUERY: " .. ts .. " " .. rrname .. " [**] " .. rrtype .. " [**] " ..
                "TODO" .. " [**] " .. srcip .. ":" .. sp .. " -> " ..
                dstip .. ":" .. dp)
        end
    end
    dns_answers = DnsGetAnswers();
    if dns_answers ~= nil then
        for n, t in pairs(dns_answers) do
            rrname = t["rrname"]
            rrtype = t["type"]
            ttl = t["ttl"]

            print ("ANSWER: " .. ts .. " " .. rrname .. " [**] " .. rrtype .. " [**] " ..
                ttl .. " [**] " .. srcip .. ":" .. sp .. " -> " ..
                dstip .. ":" .. dp)
        end
    end
    dns_auth = DnsGetAuthorities();
    if dns_auth ~= nil then
        for n, t in pairs(dns_auth) do
            rrname = t["rrname"]
            rrtype = t["type"]
            ttl = t["ttl"]

            print ("AUTHORITY: " .. ts .. " " .. rrname .. " [**] " .. rrtype .. " [**] " ..
                ttl .. " [**] " .. srcip .. ":" .. sp .. " -> " ..
                dstip .. ":" .. dp)
        end
    end
    rcode = DnsGetRcode();
    if rcode == nil then
        return 0
    end
    print (rcode)
    if DnsGetRecursionDesired() == true then
        print ("RECURSION DESIRED")
    end
    return 1  
end

