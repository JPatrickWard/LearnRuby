# Simple Calculator App

require 'pry'

def say (msg)
  puts "---------- #{msg} ----------"
end

say "This is a calculator app."
#say
say 'What is the first number?'

num1 = gets.chomp

say 'What\'s the second?'
num2 = gets.chomp

say "1) Add  2) subtract  3) Multiply   4) Divide"
operator = gets.chomp

binding.pry


if operator == '1'
  result = num1.to_i + num2.to_i
elsif operator == '2'
  result = num1.to_i - num2.to_i
elsif operator == '3'
  result = num1.to_i * num2.to_i
elsif operator == '4'
  result = num1.to_f / num2.to_f
end

say "Result is #{result}"
