local function reduce(max, init, f)
    local val = init
    for i = 1, max do
        val = f(val, i)
    end
    return val
end

local function add(a, b)
    return a + b
end

local function mul(a, b)
    return a * b
end

local function factorial(num)
    return reduce(num, 1, mul)
end

print(factorial(5))
