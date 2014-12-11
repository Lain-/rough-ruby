puts 'Welcome to the Binary Converter.'.center(50)
puts 'Written in Ruby by Huynh Yen Loc.'.center(50)
puts

print 'Enter a number: '
num = gets.chomp().to_i
array = []

while true
    if num < 1
        break
    end
    factor = num % 2
    array << factor
    num = num / 2
end

puts
puts "The binary number is #{array.reverse.join.to_i}."
