require 'rubygems'
require 'pry'

# Object Oriented Blackjack game

# 1) Abstraction
# 2) Encapsulation

class Card
  attr_accessor :suit, :face_value

  def initialize(s, fv)
    @suit = s
    @face_value = fv
  end

  def pretty_output
    "The #{face_value} of #{find_suit}"
  end

  def to_s
    pretty_output
  end

  def find_suit
    ret_val = case suit
                when 'H' then 'Hearts'
                when 'D' then 'Diamonds'
                when 'S' then 'Spades'
                when 'C' then 'Clubs'
              end
    ret_val
  end
end

class Deck
  attr_accessor :cards

  def initialize
    @cards = []
    ['H', 'D', 'S', 'C'].each do |suit|
      ['2', '3', '4', '5', '6', '7', '8', '9', '10', 'J', 'Q', 'K', 'A'].each do |face_value|
        @cards << Card.new(suit, face_value)
      end
    end
    scramble!
  end

  module Hand
    def show_hand
      puts "---- #{name}'s Hand ----"
      cards.each do|card|
        puts "=> #{card}"
      end
      puts "=> Total: #{total}"
    end

    def total_hand
      face_values = cards.map{|card| card.face_value }

      total = 0
      face_values.each do |val|
        if val == "A"
          total += 11
        else
          total += (val.to_i == 0 ? 10 : val.to_i)
        end
      end

    def add_card(new_card)
      cards << new_card

    end

  end

  def scramble!
    cards.shuffle!
  end

  def deal_one
    cards.pop
  end

  def size
    cards.size
  end
end

class Player
  include Hand

  attr_accessor :name, :cards

  def initialize(n)
    @name = n
    @card = []

  end


end

class Dealer
  include Hand

  attr_accessor :name, :cards


  def initialize
    @name = "Dealer"
    @cards = []
  end
end


class BlackjackEngine

  def initialize
end


deck = Deck.new

player = Player.new("Patrick")
player.show_hand
player.total_hand


dealer = Dealer.new
dealer.show_hand
dealer.total_hand