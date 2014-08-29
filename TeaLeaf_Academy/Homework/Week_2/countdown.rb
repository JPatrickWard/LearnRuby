# x = gets.chomp.to_i
# puts "You entered #{x.round(2)} Lets do some subtraction."
# until x < 0
#   puts x.round(2)
#   x -= 0.5455
# end
# puts "done!"

#Begin statement

# x = gets.chomp.to_i
# puts "You entered #{x.round(2)} Lets do some subtraction."
#
# begin
#   puts x.round(2)
#   x -= 0.5455
# end while x >= 0
# puts "done!"

# For Loop

x = gets.chomp.to_i

for i in 1..x do
  puts x
  x -= 1
end

puts "Done!"