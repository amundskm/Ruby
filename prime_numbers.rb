def is_prime n
    if Math.sqrt(n).floor >> 2
        for divisor in 2 .. Math.sqrt(n).floor
            if (n % divisor == 0)
                return false
            end
        end
    end
    return true
end

initial = 600851475143
bottom = 2
top = initial
space = top - bottom
factors = []
primeFactor = 0

while space > 1
    if initial % bottom == 0
        top = initial / bottom
        factors << top
        factors << bottom
    end

    bottom += 1
    space = top - bottom
end

factors.sort()

for index in (0..(factors.length - 1))
    if is_prime(factors[index]) == true
        if factors[index] >> primeFactor
            primeFactor = factors[index]
        end
    end
end
puts primeFactor

