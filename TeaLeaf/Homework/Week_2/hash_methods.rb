# Write a program that loops through a hash and prints all of the keys.
# Then write a program that does the same thing except printing the values.
# Finally, write a program that prints both hash and values

# Setup the hash
hash1 = {fruits: ["Apple", "Pear", "Kumquat", "Tangello"], veggies: ["Carrot", "Squash"], nut: "Almond"}

hash1.each_key { |key| puts key}

puts
puts

hash1.each_value { |value| puts value}

puts

hash1.each {|key, value| puts "The Key/value pairs are #{key}, and #{value}"}

if hash1.has_value? ("Carrot")
  puts "Has the value"
else
  puts "Doesn't have value"
end