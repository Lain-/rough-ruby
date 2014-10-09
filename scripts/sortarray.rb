puts 'Type-as-much-as-you-want'.center(50)
puts 'Written in Ruby by Huynh Yen Loc.'.center(50)
puts 'Enter an empty line to exit the script.'.center(50)
puts

awesome_array = []
while true
    print 'Your input: '
    input = gets.chomp()
    awesome_array << input
    if input == ''
        puts awesome_array.sort #the sort method sorts the array in alphabet order.
        break
    end
end