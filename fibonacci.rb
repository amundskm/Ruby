ans = 2 # first even value
values = [1, 2]
index = 1
fibonacci = 1
while true
    fibonacci = values[index] + values[index - 1]
    if fibonacci > 4000000
        break
    else
        values << fibonacci
        
        if fibonacci % 2 == 0
            ans += fibonacci
        end
        
        index += 1
    end
end

puts ans


