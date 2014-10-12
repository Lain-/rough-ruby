#Project Euler
#Problem 16: Power digit sum.

num = 2 ** 1000
sum = 0

array = num.to_s.split('')

array.each do |x|
    sum = sum + x.to_i
end

puts "The sum of the digits of the number 2 power 1000 is #{sum}."