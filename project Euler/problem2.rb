#Project Euler
#Problem 2: Even Fibonacci numbers.

fib1 = 1
fib2 = 2
sum = 2

#Note: Because the Fibonacci sequence start with one odd and one even number (1 and 2), the next
#number must be an odd number , after that is another odd number, THEN after that is an even number
#because odd + odd = even. In summary, the pattern is odd, even, odd, odd, even, odd, odd, even,...

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

puts "The sum of all even Fibonacci numbers not greater than 4 million is #{sum}."
