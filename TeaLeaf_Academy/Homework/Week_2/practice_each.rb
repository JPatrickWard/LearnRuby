#
# names = ['Bob', 'Joe', 'Steve', 'Janice', 'Susan', 'Helen']
#
# names.each { |q| puts q }

names = ['Bob', 'Joe', 'Steve', 'Janice', 'Susan', 'Helen']
x = 1

names.each do |name|
  puts "#{x}. #{name}"
  x += 1
end