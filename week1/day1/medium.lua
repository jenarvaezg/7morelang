function for_loop(a, b, f)
    i = a
    while i <= b do
        f(i)
        i = i + 1
    end
    
end


for_loop(0, 10, print)