class GoodDog4

  DOG_YEARS = 7
  attr_accessor :name, :age
  def initialize(n, a)
    self.name = n
    self.age = a * DOG_YEARS
  end

  def public_disclosure

    "#{self.name} in human years is #{human_years}"
  end # - See more at: http://www.gotealeaf.com/books/ruby/read/inheritance#sthash.lwJ0O1e9.dpuf

  private

  def human_years
    self.age / DOG_YEARS
  end
end

sparky = GoodDog4.new("Sparky", 4)
sparky.human_years #- See more at: http://www.gotealeaf.com/books/ruby/read/inheritance#sthash.lwJ0O1e9.dpuf
