#Project Euler
#Problem 6: Sum square difference.

sum_of_squares = 0
square_of_sum = 0
num = 1
sum = 0

while true
    if num > 100
        num = 1     #Reset num.
        break
    end
    sum_of_squares = sum_of_squares + num * num
    num = num + 1
end

while true
    if num > 100
        square_of_sum = sum * sum
        break
    end
    sum = sum + num
    num = num + 1
end

print "The difference between the sum of the squares of the first one hundred\nnatural numbers and the square of the sum is #{(sum_of_squares - square_of_sum).abs}."
