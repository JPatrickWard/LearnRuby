#Date: 12-12-2013
#Assignment: Write a program that asks for a person's first name, then middle and then last name. Then greet the person using their full name.

puts 'What is your First Name?: '
f_name = gets.chomp
puts 'What is your Middle Name?: '
m_name = gets.chomp
puts 'And finally, What is your Last Name?: '
l_name = gets.chomp
puts 'Hello '+ f_name +' ' + m_name + ' ' + l_name +'! How are you?'
puts
puts 'What is your favorite number?'
number = gets.chomp.to_f
new_num = number.to_f + 0.1
puts 'If ' + number.to_s + ' is your favorite number then you should like '  + new_num.to_s  + ' because it\'s slightly bigger'
