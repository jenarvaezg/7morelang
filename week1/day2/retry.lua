function retry(count, body)
    for _ = 1, count do
        print("Trying")
        local _, result = coroutine.resume(coroutine.create(body))
        if result == nil then
            return
        end
    end

    return error("Too many retries")


end

retry(
    5,
    function()
        if math.random() > 0.2 then
            coroutine.yield('Something bad happened')
        end

        print('Succeeded')
    end
)
