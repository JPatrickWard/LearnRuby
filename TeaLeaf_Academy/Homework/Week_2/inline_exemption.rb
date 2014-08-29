zero = 0
puts "Before each call"
zero.each { |element| puts element } rescue puts "You have been rescued"
puts "After each call"