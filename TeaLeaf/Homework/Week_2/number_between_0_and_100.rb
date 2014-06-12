# Write a program that takes a number from the user between 0 and 100 and reports back whether the number is
# between 0 and 50, 50 and 100, or above 100.

puts "Enter a number between 0 and 100"
number = gets.chomp.to_i

if number < 0
  puts "That number is less than zero, and thus outside the valid range."
  # exit
elsif number <= 50
  puts "Ah.... 0 <= #{number} <= 50"
elsif
  number <= 100
  puts "Ah... 50 <= #{number} <100"
else
   puts "Ah... #{number} > 100"
end