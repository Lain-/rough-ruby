puts 'Type-as-much-as-you-want'.center(50)
puts 'Written in Ruby by Huynh Yen Loc'.center(50)
puts 'Enter an empty line to exit the script.'.center(50)
puts

words = []
while true
    print 'Your input: '
    input = gets.chomp()
    words << input
    if input == ''
        puts words.sort
        break
    end
end