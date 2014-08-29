# write a program that uses the merge! and merge method to show/describe the differene between each

hash1 = {name: 'Patrick', age: '33'}
car = {model: 'Chevy', year: '1937'}

puts "hash1.merge(car) is #{hash1.merge(car)}"

puts "hash1 is #{hash1}"
puts "car is #{car}"

puts
puts "hash1.merge!(car) is #{hash1.merge!(car)}"
puts "And again hash1 is #{hash1}"
puts "And car is #{car}"
