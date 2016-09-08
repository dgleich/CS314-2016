import HTTPClient
function get_links_big(node)
    r = HTTPClient.get(@sprintf("http://puma.cs.purdue.edu:8888/node/%i", node))
    @assert(r.http_code == 200)
    str= takebuf_string(r.body)
    return map( x -> parse(Int64,x), split(str," "))
end
function get_links_small(node)
    r = HTTPClient.get(@sprintf("http://puma.cs.purdue.edu:9999/node/%i", node))
    @assert(r.http_code == 200)
    str= takebuf_string(r.body)
    return map( x -> parse(Int64,x), split(str," "))
end