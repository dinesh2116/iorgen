-- if_: not a condition
-- class: not a class
-- i: just a string
-- in_: not in
-- for_: not a loop
-- words: contains lots of things
function keywords(if_, class, i, in_, for_, words)
    -- TODO If this compiles, it is already a good step!
end

local if_ = tonumber(io.read())
local class = io.read()
local i = io.read()
local j = {string.match(io.read(), "(-?%d+) (-?%d+)")}
local in_ = {a = tonumber(j[1]), static = tonumber(j[2])}
local for_ = {}
for j in string.gmatch(io.read(), "-?%d+") do
    table.insert(for_, tonumber(j))
end
local words = {}
for j = 1, 2 do
    words[j] = {}
    words[j]["int"] = {}
    words[j]["int"]["return"] = tonumber(io.read())
    words[j]["int"]["void"] = {}
    for k in string.gmatch(io.read(), "-?%d+") do
        table.insert(words[j]["int"]["void"], tonumber(k))
    end
    words[j]["if true"] = tonumber(io.read())
end

keywords(if_, class, i, in_, for_, words)
