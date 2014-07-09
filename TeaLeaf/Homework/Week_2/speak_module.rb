# good_dog.rb
#
module Speak

  def speak(sound)
  puts "#{sound}"
  end

end

class GoodDog
  include Speak
end

class HumanBeing
  include Speak
end

# sparky = GoodDog.new
# sparky.speak("Arf!") # => Arf!
# bob = HumanBeing.new
# bob.speak("Hello!")# => Hello!

puts "---GoodDog ancestors---"
puts GoodDog.ancestors
puts ''
puts "---HumanBeing ancestors---"
puts HumanBeing.ancestors # - See more at: http://www.gotealeaf.com/books/ruby/read/the_object_model#sthash.nnCWWY72.dpuf
