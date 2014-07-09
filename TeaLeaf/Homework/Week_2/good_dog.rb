# good_dog.rb

class GoodDog

  DOG_YEARS = 7
  @@number_of_dogs = 0
  attr_accessor :name, :height, :weight, :age

  def initialize(n, h, w, a)
    @@number_of_dogs +=1
    @name = n
    @height = h
    @weight = w
    self.age = a * DOG_YEARS
  end

  def speak
    "#{name} says arf!"
  end

  def change_info(n, h, w, a)
    self.name = n
    self.height = h
    self.weight = w
    self.age = a
    # To disambiguate from creating a local variable, we need to use self.name= to let Ruby know that
    # we're calling a method. - See more at: http://www.gotealeaf.com/books/ruby/read/classes_and_objects_part1#sthash.prFJvSZA.dpuf
  end

  def info
    "#{name} weighs #{weight} and is #{height} tall."
  end

  def to_s
    "This dog's name is #{name} and the creature is #{age} in dog years."
  end

  def self.what_am_I
    "I am a GoodDog class"
  end

end

sparky = GoodDog.new('Sparky', '12 inches', '10 lbs', 67)
puts sparky.info # => Sparky weighs 10 lbs and is 12 inches tall.

sparky.change_info('Spartacus', '24 inches', '45 lbs', 23)
puts sparky.info # => Spartacus weighs 45 lbs and is 24 inches tall.

puts
puts sparky.to_s

GoodDog.what_am_I

