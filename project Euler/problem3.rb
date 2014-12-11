#Project Euler
#Problem 3: Largest prime factor.

require 'prime'

num = 600851475143
largest_prime_factor = 2

(1..Math.sqrt(num)).each do |i|
    if num % i == 0
        if i.prime? == true
            largest_prime_factor = i
        end
    end
end

puts "The largest prime factor of %s is %s." % [num, largest_prime_factor]