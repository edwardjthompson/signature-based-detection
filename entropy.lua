function init (args)
    local needs = {}
    needs["dns.rrname"] = tostring(true)
    return needs
end

function match(args)
    -- print(args)
    print("loop")
    dns_query = DnsGetQueries();
    print(dns_query)
    dns_answers = DnsGetAnswers();
    print(dns_answers)
    dns_auth = DnsGetAuthorities();
    print(dns_answers)
    rcode = DnsGetRcode();
    print(rcode)
    return 1  
end

