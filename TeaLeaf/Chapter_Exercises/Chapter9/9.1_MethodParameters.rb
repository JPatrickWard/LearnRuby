def say_moo number_of_moos
  puts 'mooooooo...'*number_of_moos
end

#say_moo 3
puts 'oink'


return_val = puts 'This puts returned:'
puts return_val


puts
puts 'Hello, and thank you for taking the time to'
puts 'help me with this experiment.  My experiment'
puts 'has to do with the way people feel about'
puts 'Mexican food.  Just think about Mexican food'
puts 'and try to answer every question honestly,'
puts 'with either a "yes" or a "no".  My experiment'
puts 'has nothing to do with bed-wetting.'
puts
#  We ask these questions, but we ignore their answers.
while true
  puts 'Do you like eating tacos?'
  answer = gets.chomp.downcase
  if (answer == 'yes' || answer == 'no')
    puts 'That is good!'
    break

  else
            puts 'Please answer "yes" or "no".'
  end
end

while true
  puts 'Do you wet the bed?'
  answer = gets.chomp.downcase
  if (answer == 'yes' || answer == 'no')
    if answer == 'yes'
      wets_bed = true
    else
      wets_bed = false
    end
    break
  else
            puts 'Please answer "yes" or "no".'
  end
end

