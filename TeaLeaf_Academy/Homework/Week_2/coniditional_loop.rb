# x = 0
# puts "Enter a number less than 100"
# number = gets.chomp.to_i
#
# while x <= number
#   if x.odd?
#     puts x
#   end
#   x += 1
# end


#Using Next
#
# x = 0
#
# while x <= 10
#   if x == 3
#     x += 1
#     next
#   elsif x.odd?
#     puts x
#   end
#   x += 1
# end

# Using Break
x = 0

while x <= 10
  if x == 7
    break
  elsif x.odd?
    puts x
  end
  x += 1
end