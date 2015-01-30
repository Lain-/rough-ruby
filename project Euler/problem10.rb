#Project Euler
#Problem 10: Summation of primes.

prime_num = Array.new
num = 2
sum = 0

while true
    x = 2
    if num > 2_000_000
        break
    end
    while true
        prime_check = num % x
        if prime_check == 0 && num != 2
            num = num + 1
            break
        end
        x = x + 1
        if x > Math.sqrt(num) || num == 2
            prime_num << num
            if num == 2
                num = num + 1
                break
            else num = num + 2
                break
            end
        end
    end
end

prime_num.each do |x|
    sum = sum + x
end
print "The sum of all primes smaller than 2.000.000 is #{sum}."
