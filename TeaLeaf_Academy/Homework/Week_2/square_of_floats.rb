# Write a program that calculates the square of 3 floats that user provides.
#
# def calculate_square (value)
#   square = value^2
#   puts "The number #{float} squared is #{square}"
# end
# puts " Enter a float Number.  Hint: that\'s a number with a decimal."
# float.to_f = gets.chomp
# # calculate_square(float)
# puts float

puts "Enter the first float value."
value1 = gets.chomp
puts "enter the second float value."
value2 = gets.chomp
puts "Enter the third and final float value."
value3 = gets.chomp

value1 = value1.to_f * value1.to_f

puts "#{value1} squared is #{value1.round(3)}"
puts "#{value2} squared is #{value2.to_f * value2.to_f}"
puts "#{value3} squared is #{value3.to_f * value3.to_f}"