local Hamming = {}

function Hamming.compute(a,b)
    if string.len(a) ~= string.len(b) then
        return -1
    end
    local diff = 0
    for i = 1, string.len(a) do
        local c = a:sub(i, i)
        local d = b:sub(i, i)
        if c ~= d then
            diff = diff + 1
        end
    end
    return diff
end

return Hamming
