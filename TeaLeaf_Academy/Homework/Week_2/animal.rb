class Animal

  def speak
    "Hello!"
  end
end

class GoodDog < Animal
  attr_accessor :name

  def initialize(n)
    self.name = n
  end

  def speak
    "#{self.name} says arf!"
  end

end

class Cat < Animal

end

spanky = GoodDog.new("Spanky")
paws = Cat.new
puts spanky.speak
puts paws.speak
