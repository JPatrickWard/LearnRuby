# Write a method that takes a string as argument. The method should return the capitalized version of the string, only if the string
# is longer than 10 characters. (Hint: Ruby's String class has a few methods that would be helpful.

def upper_case (string)
  if string.length > 10
   string = string.upcase
  end
  return string

end
puts "Enter a string to upcase"
uppercase = gets.chomp
puts
puts "After upper_case method call, '#{uppercase}' becomes " + upper_case(uppercase)