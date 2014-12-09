puts 'Welcome to the Numbers Generator.'.center(50)
puts 'Written in Ruby by Huynh Yen Loc.'.center(50)
puts

def ask_user
    prompt = '>> '
    puts 'Which number sequence do you want to be generated?'
    puts 'Natural number [1]'
    puts 'Triangular number [2]'
    puts 'Fibonacci number [3]'
    puts 'Prime number [4]'
    print prompt
    answer = gets.chomp()
    puts 'Enter the limit for your number sequence.'
    print prompt
    while true
        limit = gets.chomp().to_i
        if answer == '4' && limit <= 1
            puts 'Invalid input!'
            print prompt
        elsif limit <= 0
            puts 'Invalid input!'
            print prompt
        else break
        end
    end
    if answer == '1'
        natural_number limit
    elsif answer == '2'
        triangular_number limit
    elsif answer == '3'
        fibonacci_number limit
    elsif answer == '4'
        prime_number limit
    else return
    end
end

def natural_number limit
    id = 'natural'
    natural_num = Array.new
    num = 1
    while true
        if num > limit
            break
        else natural_num << num
            num = num + 1
        end
    end
    array = natural_num.to_s.sub!('[', '').sub!(']', '') + '.'
    print array
    write_to_file(id, array, limit)
end

def triangular_number limit
    id = 'triangular'
    triangular_num = Array.new
    x = 2
    num = 1
    while true
        if num > limit
            break
        else triangular_num << num 
            num = num + x
            x = x + 1
        end
    end
    array = triangular_num.to_s.sub!('[', '').sub!(']', '') + '.'
    print array
    write_to_file(id, array, limit)
end

def fibonacci_number limit
    id = 'fibonacci'
    fibonacci_num = [1, 1]
    while true
        if fibonacci_num.last > limit
            break
        else num = fibonacci_num.last + fibonacci_num.fetch(fibonacci_num.index(fibonacci_num.last) - 1)
            if num > limit
                break
            end
            fibonacci_num << num
        end
    end
    array = fibonacci_num.to_s.sub!('[', '').sub!(']', '') + '.'
    print array
    write_to_file(id, array, limit)
end

def prime_number limit
    id = 'prime'
    prime_num = Array.new
    num = 2
    while true
        x = 2
        if num > limit
            break
        end
        if limit == 2
            prime_num << 2
            break
        end
        while true
            prime_check = num % x 
            if prime_check == 0 && num != 2
                num = num + 1
                break
            end
            x = x + 1
            if x > Math.sqrt(num)
                prime_num << num
                if num == 2 
                    num = num + 1
                    break
                else num = num + 2      #In case num != 2, which means num is a prime AND an odd number, we can skip the next number which is an even one.
                    break
                end
            end
        end
    end
    array = prime_num.to_s.sub!('[', '').sub!(']', '') + '.'
    print array
    write_to_file(id, array, limit)
end

def write_to_file(id, array, limit)
    if array.length < 2
        return
    end
    puts
    print "Do you want to write all generated numbers to a text file? "
    answer = gets.chomp()
    if answer.upcase == 'YES' || answer.upcase == 'Y'
        file = File.new("#{id}_number_sequence(max#{limit}).txt", "w")
        file.write(array)
        puts "All generated #{id} numbers were written to #{id}_number_sequence(max#{limit}).txt"
        file.close()
    end
end

#Let's go!
ask_user