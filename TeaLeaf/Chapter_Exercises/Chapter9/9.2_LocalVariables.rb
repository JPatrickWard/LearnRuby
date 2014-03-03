def double_this num
  num_times_2 = num * 2
  puts num.to_s + ' doubled is ' + num_times_2.to_s
end

def square_this number
  squared = number * number
  puts number.to_s + ' squared is ' + squared.to_s
end


double_this 11.5
puts
square_this 7.49

puts
puts


tough_var = 'You can\'t even touch my variable!'
def little_pest tough_var
  tough_var = nil
  puts 'HAHA! I ruined your variable!'
  puts 'tough_var in the method call is: ' + tough_var.to_s
end
little_pest tough_var
puts
puts 'tough_var outside the method is: ' + tough_var