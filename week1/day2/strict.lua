local util = require "util"
local _private = {}


function strict_read(table, key)
    if _private[key] then
        return _private[key]
    else
        error("Invalid key: " .. key)
    end
end

function strict_write(table, key, value)
    -- check nil to allow deletion
    if _private[key] and value ~= nil then
        error("Duplicate key: " .. key)
    else
        _private[key] = value
    end
end

local function concatenate(a1, a2)
    local result = a1
    for i = 1, #a2 do
        result[#result + 1] = a2[i]
    end
    return result
end

local mt = {
    __index = strict_read,
    __newindex = strict_write,
    __str = util.table_to_string,
}

treasure = {}
setmetatable(treasure, mt)

-- Test deletion
treasure.pepe = 1
treasure.pepe = nil

-- Test concatenation

local add_mt = {
    __add = concatenate,
}

setmetatable(_G, {
    __newindex = function(array, index, value)
        rawset(array, index, value)
        setmetatable(value, add_mt)
    end,
})
