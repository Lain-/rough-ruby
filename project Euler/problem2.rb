#Project Euler
#Problem 2: Even Fibonacci numbers.

fib1 = 1
fib2 = 2
sum = 2

until fib1 > 4000000 || fib2 > 4000000
    fib1 = fib1 + fib2
    if fib1 % 2 == 0
        sum = sum + fib1
    end
    fib2 = fib2 + fib1
    if fib2 % 2 == 0
        sum = sum + fib2
    end
end

puts sum
