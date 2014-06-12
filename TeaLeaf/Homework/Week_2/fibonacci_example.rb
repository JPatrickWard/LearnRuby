# fibonacci.rb

def fibonacci(number)
  if number < 2
    number
  else
    fibonacci(number - 1) + fibonacci(number - 2)
  end
end

puts "What number do you want to use for your Fibonacci?"
value = gets.chomp.to_i
puts fibonacci(value)
