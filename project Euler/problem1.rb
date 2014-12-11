#Project Euler
#Problem 1: Multiples of 3 and 5.

sum = 0
x = 1

while true
    if x == 1000
        break
    end
    if x % 3 == 0 || x % 5 == 0
        sum = sum + x
    end
    x = x + 1
end

print "The sum of all the multiples of 3 or 5 below 1000 is #{sum}."
