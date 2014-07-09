module PASSENGERS_AVAILABLE
  def seven_passengers?(passengers)
    passengers >= 7 ? true : false
  end

end

#### pick up from here and do problem 5 #####


class Vehicle

  @@number_of_objects = 0

  def self.number_of_objects
    puts "This class has been used to create #{@@number_of_objects} vehicle objects"
  end

  def initialize
    @@number_of_objects +=1
  end

  def mpg(miles, gallons)
    mpg = miles/gallons
    puts "#{mpg} is your miles per gallon of gas"
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

end

class My_Car < Vehicle
NUMBER_OF_TIRES = 4
end

class MyTruck < Vehicle
  HAS_A_BED = TRUE
end

puts Vehicle.ancestors
puts My_Car.ancestors
puts My_Car.ancestors

puts