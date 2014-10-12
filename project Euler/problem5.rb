#Project Euler
#Problem 5: Smallest multiple.

the_number = 20
factor = 2

while true
    if the_number % factor != 0
        the_number = the_number + 1
        factor = 2
    end
    if the_number % factor == 0
        factor = factor + 1
    end
    if factor > 20
        break
    end
end

print "The smallest positive number that is evenly divisible\nby all of the numbers from 1 to 20 is #{the_number}."