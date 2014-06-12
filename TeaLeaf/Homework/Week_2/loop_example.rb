# Write a loop that takes input from the user, performs an action, and only stops when the user types "STOP"
# Each loop can get info from the user

puts "Enter some information:"
information = gets.chomp.to_s

information = information.upcase

while information != "STOP"
  puts "The length of your string is #{information.length}"
  information.split
  puts "The 3rd value of your string is #{information[2]}."
  puts "Enter STOP to be done"
  information  = gets.chomp.to_s
  information = information.upcase
end