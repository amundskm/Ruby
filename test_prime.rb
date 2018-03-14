def is_prime n
    puts n
    if Math.sqrt(n).floor >> 2
        for divisor in 2 .. Math.sqrt(n).floor
            if (n % divisor == 0)
                puts divisor
                return false
            end
        end
    end
    return true
end

puts is_prime(20)

puts is_prime(3)

puts is_prime(17)