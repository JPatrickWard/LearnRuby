# Use Ruby's Array method delete_if and String method start_with? to delete all of the words that begin with
# an "s" in the following array.
# See more at: http://www.gotealeaf.com/books/ruby/read/intro_exercises#sthash.bBLkeI7B.dpuf

arr = ['snow', 'winter', 'ice', 'slippery', 'salted roads', 'white trees']


puts "before deleting words with an 's': #{arr}"
puts
arr.delete_if { |word| word.start_with?("s") }

puts "After deleting words that start with 's' #{arr}"
puts

arr.delete_if { |word| word.start_with?("s", "w")}
puts "Now after deleting words that start with 's' or 'w' #{arr}"
