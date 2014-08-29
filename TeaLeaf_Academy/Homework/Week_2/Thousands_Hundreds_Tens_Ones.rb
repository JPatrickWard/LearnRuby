puts "This exercise will display the thousands, hundreds, tens & ones value of a 4 digit number."
puts ''
puts "Please enter a 4 digit number now."

number = gets.chomp

number = number.to_i
thousands = number / 1000
hundreds = number / 100 % 10
tens = number / 10 % 10
ones = number % 10
puts ''
puts "#{number} is your number"
puts "#{thousands} is the thousands value."
puts " #{hundreds} is the hundreds value."
puts "  #{tens} is the tens value."
puts "   #{ones} is the ones value."