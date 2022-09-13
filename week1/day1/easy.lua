local function ends_in_3(num)
    local last_digit = num % 10
    return 3 == last_digit
end

local function is_prime(num)
    if num == 1 then
        return true
    end

    for i = math.ceil(math.sqrt(num)), 2, -1 do
        if num % i == 0 then
            return false
        end
    end
    return true
end

local function first_primes_ending_in_three(count)
    local total = 0
    local i = 3
    while total < count do
        if is_prime(i) and ends_in_3(i) then
            total = total + 1
            print(i)
        end
        i = i + 1
    end
end

first_primes_ending_in_three(30)
