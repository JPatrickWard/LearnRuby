# write a program that displays the factorial of 5, 6, 7 and 8

# take values in an array.  Step through the array until have gone through each value
  # take value of number in array, subtract 1 from it, until you get to zero, then multiply those numbers together and output the factorial

numbers = [5,6,7,8,9]

def factorial (value)
  value.map { |n| n * n } #=> [1, 4, 9]
  # initial number * initial number -1 * new number -1 .... while number  > 0
end

numbers.each do |arr|
  # item = 0
  item = arr
 if item > 0
    # create a method to find the factorial and call it here.
    factorial = ( item.to_i - 1 ) * item.to_i # Put this into an each.map.
 end
  # Then use an each.map to add all the values of the array and call it 'factorial'
  puts " #{arr}! is #{factorial}"
end

puts
five_f = 5 * 4 * 3 * 2 * 1
six_f = 6 * five_f
seven_f = 7 * six_f
eight_f = 8 * seven_f
puts "5! is #{five_f}"
puts "6! is #{six_f}"
puts "7! is #{seven_f}"
puts "8! is #{eight_f}"

