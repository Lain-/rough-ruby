puts 'Welcome to the Prime Numbers Generator.'.center(50)
puts 'Written in Ruby by Huynh Yen Loc.'.center(50)
puts

print 'Enter the number of digits: '    #Note: If there are more than 5 digits, the script starts to take a (very) long time to finish.
digits = gets.chomp().to_i

lowerlimit = 10 ** (digits - 1)
upperlimit = 10 ** digits - 1
prime_numbers = []

if digits >= 6
puts "..."
end

num = lowerlimit
while true
    x = 2
    if num > upperlimit
        break
    end
    while true
        if num == 1                 #Since num can start at 1, if so, change num to 2
            num = 2
        end
        prime_check = num % x 
        if prime_check == 0 && num != 2
            num = num + 1
            break
        end
        x = x + 1
        if x > Math.sqrt(num)       #num is prime. If num is 2, this will also catches it.
            prime_numbers << num
            if num == 2 
                num = num + 1
                break
            else num = num + 2      #In case num != 2, which means num is a prime AND a odd number, we can skip the next number which is an even one.
                break
            end
        end
    end
end

#Write all the prime numbers to a text file.
print "Do you want to write all generated prime numbers to a text file? "
answer = gets.chomp()
if answer.upcase == 'YES' || answer.upcase == 'Y'
    content = prime_numbers.to_s.sub!('[', '').sub!(']', '').gsub!(',', '')    #Simplify the text down to just numbers separated by one spaces.
    file = File.new("#{digits}-digit-primes.txt", "w")
    file.write(content)
    puts "All generated prime numbers were written to #{digits}-digit-prime.txt"
end
puts

#Pick a random prime number in the array.
primes = prime_numbers.length
puts "A generated prime number picked at random: #{prime_numbers[rand(primes)]}"