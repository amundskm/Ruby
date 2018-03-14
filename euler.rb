ans = 0
1000.times do |index|
    if index % 3 == 0
        ans += index
    elsif index % 5 == 0
        ans += index
    end
end 

puts ans