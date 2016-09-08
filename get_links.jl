import Requests
function get_links_big(node)
    r = Requests.get(@sprintf("http://puma.cs.purdue.edu:8888/node/%i", node))
    @assert(r.status == 200)
    str= ASCIIString(r.data)
    return map( x -> parse(Int64,x), split(str," "))
end
function get_links_small(node)
    r = Requests.get(@sprintf("http://puma.cs.purdue.edu:9999/node/%i", node))
    @assert(r.status == 200)
    str= ASCIIString(r.data)
    return map( x -> parse(Int64,x), split(str," "))
end