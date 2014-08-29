module PASSENGERS_AVAILABLE
  def seven_passengers?(passengers)
    passengers >= 7 ? true : false
  end

end

class Vehicle

@@number_of_objects = 0
  def initialize(year, color, model)
    @year = year
    @color = color
    @model = model
    @current_speed = 0

    @@number_of_objects += 1
  end

  def self.number_of_objects
    puts "This class has been used to create #{@@number_of_objects} vehicle objects"
  end

  def car_color_change_view(color)
    self.color = color
    puts "Enter a color to paint your car."
    color = gets.chomp
    puts "The new color is #{color}"
  end

  def speed_up(value)
    @current_speed += value
    puts "You are a maniac!  You've sped up by #{value} mph and are going to kill us all!"
  end

  def brake(value)
    @current_speed -= value
    puts "You're braking too fast, you maniac!  You're going to kills us all! Slowed down by #{value} mph."
  end

  def current_speed
    puts "you're now traveling at #{@current_speed} "
  end

  def shut_off
    @current_speed = 0
    puts "We're safe at last, and we only suffered a few speed related deaths."
  end

  def mpg(miles, gallons)
    mpg = miles/gallons
    puts "#{mpg} is your miles per gallon of gas"
  end

  # Write a method called age that calls a private method to calculate the age of the vehicle.
  # Make sure the private method is not available from outside of the class.
  # You'll need to use Ruby's built-in Time class to help.
    # - See more at: http://www.gotealeaf.com/books/ruby/read/inheritance#sthash.yWBZLEju.dpuf
def age
  puts "Your vehicle, the #{self.model}, is #{years_old} years old."
end

  private

  def years_old
    Time.now.year - self.year
  end

end

class MyCar < Vehicle

  #### Part 1 ####
  # Create a class called MyCar. When you initialize a new instance or object of the class,
  # allow the user to define some instance variables that tell us the year, color, and model of the car.
  # Create an instance variable that is set to 0 during instantiation of the object to track the current
  # speed of the car as well. Create instance methods that allow the car to speed up, brake, and shut the car off.

  #### Part 2 ####
  # Add an accessor method to your MyCar class to change and view the color of your car.
  # Then add an accessor method that allows you to view, but not modify, the year of your car.

  attr_accessor :year, :color, :model, :fruit
  attr_reader :year

  @@number_of_objects = 0

  def to_s(value)
    "My car is a #{self.color}, #{self.year}, #{@model}. Don't laugh, it's paid for."
  end

  def get_my_car_type
    self.to_s("red")
  end
end

car1 = MyCar.new(2013, 'Charcoal', 'Agera R')
car1.speed_up(76)
car1.brake(2)
car1.shut_off
car1.current_speed
car2 = MyCar.new("1992", "Subaru Brat", "silver")

car1.mpg(454,12)
vw = MyCar.new(1974, 'white', 'bug')

puts
vw.get_my_car_type
puts vw.age
puts car1.age
# puts car2.age


