function reduce(max, init, f)
    val = init
    for i=1, max do
        val = f(val, i)
    end
    return val
end

function add(a, b)
    return a + b
end

function mul(a, b)
    return a * b
end



function factorial(num)
    return reduce(num, 1, mul)
end



print(factorial(5))