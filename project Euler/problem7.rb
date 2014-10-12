#Project Euler
#Problem 7: 10001st prime.

prime_array = [2, 3, 5, 7]    #One-digit prime number.
counter = 4
num = 11
x = 2

while true
    if num % x == 0
        num = num + 1
        x = 2                    #Reset x.
    end
    if num % x != 0
        x = x + 1
        if x > Math.sqrt(num)    #num is prime, then.
            prime_array << num
            num = num + 1
            counter = counter + 1
            x = 2                #Reset x.
        end
    end
    if counter == 10001 
        break
    end
end

print "The 10001st prime number is #{prime_array.last}."