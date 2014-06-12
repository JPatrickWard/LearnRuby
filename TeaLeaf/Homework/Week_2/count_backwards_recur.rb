#Write a method using recursion that counts down to zero

def count_down (x)
  if x <= 0
   puts " #{x} is your number"
  else
  count_down(x - 1)
    puts x
  end
end

# puts "Enter a value at which to start counting down"
# x = gets.chomp.to_i
count_down(3)

#Output: I don't understand why output in in revrese oider. 

# 0 is your $INPUT_LINE_NUMBER1
# 2
# 3