#Prime numbers performance.
require 'prime'

def ask_user
    prompt = '>> '
    puts 'Enter your number: '
    print prompt
    num = gets.chomp().to_i
    while num < 2
        puts 'Invalid input!'
        print prompt
        num = gets.chomp().to_i
    end
    puts 'Choose calculating method (1/2) '
    print prompt
    calc_method = gets.chomp().to_i
    while calc_method < 1 || calc_method > 2
        puts 'Invalid input!'
        print prompt
        calc_method = gets.chomp().to_i
    end
    case
    when calc_method == 1
        ruby_prime(num)
    when calc_method == 2
        prime_check(num)
    end
end

#1) Ruby's own Prime class.
def ruby_prime(num)
    if num.prime? == true
        puts "#{num} is prime."
    else puts "#{num} is not prime."
    end
end

#2) Filter out composite numbers.
def prime_check(num)
    h = 2
    while Math.sqrt(num) >= h
        if num % h == 0 && num != 2
            puts "#{num} is not prime."
            break
        else h = h + 1
        end
        return puts "#{num} is prime."
    end
    if Math.sqrt(num) < h && num >= 2
        puts "#{num} is prime."
    end
end

ask_user
