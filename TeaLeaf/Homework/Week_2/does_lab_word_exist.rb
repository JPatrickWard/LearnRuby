# Write a program that checks if the sequence of characters "lab" exists in the following strings.
# If it does exist, print out the word.

word_list = ["laboratory", "experiment", "Pans Labyrinth", "elaborate", "polar bear"]

def word_check(word)
  if /lab/ =~ word || /Lab/ =~ word
    puts "Looks like 'lab' is in the word #{word}."
  else
    puts "Nope, 'lab' is not in the word #{word}."
  end
end



word_list.each do |word|
  puts word_check(word)
end


# word_list.each do |word|
#   puts word_check(word)
# end