# Use the each_with_index method to iterate through an array of your creation that prints each index and value of the array.

array = ["1", "Dog", "˚œ∑´†", "490490", 93]

array.each_with_index do | entry, index|
  puts "#{index + 1}. #{entry}"
end