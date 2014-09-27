puts 'Welcome to the Prime Number Calculator.'.center(50)
puts 'Written in Ruby by Huynh Yen Loc (27/09/14).'.center(50)
puts "Type 'EXIT' to exit the program.".center(50)
puts

print "Enter a number: " #If a very large prime number is entered (unlikely unless intentional), it will take a really long time to run.
number = gets.chomp()

while true
    if number == 'EXIT'
        break
    end
    number = number.to_i #This will convert the input into 'real' number (integer to be exact).
    x = 2 #x must be resetted.
    while true
        if number == 0 || number == 1 || number != number.abs
            puts "Invalid number or input!"
            puts
            break
        end
        if number == 2
            puts "#{number} is a prime number."
            puts
            break
        end
        prime_check = number % x
        if prime_check == 0
            puts "#{number} is not a prime number."
            puts
            break
        end
        x = x + 1  #The position of this line is very important!
        if x == number
            puts "#{number} is a prime number."
            puts
            break
        end
    end
    print "Enter another number: "
    number = gets.chomp()
end