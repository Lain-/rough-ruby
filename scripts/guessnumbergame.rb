puts 'Welcome to the Guess-the-Number Game.'.center(50)
puts 'Written in Ruby by Huynh Yen Loc.'.center(50)
puts

def computer_choose_number
    computer_number = rand(100) + 1
    puts 'Guess a number between 1 and 100'
    ask_player computer_number
end

def ask_player computer_number
    prompt = '> '
    print prompt
    number_guess = gets.chomp().to_i
    win?(number_guess, computer_number)
end

def win?(number_guess, computer_number)
    if number_guess == computer_number
        puts 'YOU WIN!'
        print 'Play again? '
        answer = gets.chomp()
        case
        when answer.upcase == 'YES'
            computer_choose_number
        when answer.upcase == 'NO'
            puts 'See you again.'
        end
    else hint(number_guess, computer_number)
    end
end

def hint(number_guess, computer_number)
    if number_guess > computer_number
        puts 'The correct number is smaller.'
        ask_player computer_number
    else puts 'The correct number is bigger.'
        ask_player computer_number
    end
end

#Let's get it started!
computer_choose_number