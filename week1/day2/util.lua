function table_to_string(t)
    local result = {}

    for k, v in pairs(t) do
        result[#result + 1] = k .. ": " .. v
    end

    return table.concat(result, "\n")
end

mt = {
    __tostring = table_to_string
}


medals = {
    "gold",
    "silver",
    "bronce";

    holder = "luis",
}

setmetatable(medals, mt)

return {
    table_to_string = table_to_string,
}
