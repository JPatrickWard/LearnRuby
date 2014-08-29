# Assignment 1:
# Write out the requirements of the blackjack game, and extract the major nouns. Use those
# nouns to then think about abstracting behaviors into Classes.
# Just use a pen or text editor for this exercise; no coding yet.

######### REQUIREMENTS ############
# Player Rules:
# Both the player and dealer are dealt two cards to start the game.
# All face cards are worth whatever numerical value they show.
# Suit cards are worth 10.
# Aces can be worth either 11 or 1
# After being dealt the initial 2 cards, the player goes first and can choose to either "hit" or "stay".
# Hitting means deal another card. If the player's cards sum up to be greater than 21, the player has "busted".
# If the sum is 21, then the player wins.
# If the sum is less than 21, then the player can choose to "hit" or "stay" again.
# If the player "hits", then repeat above, but if the player stays, then the player's total value is saved
# and the turn moves to the dealer.

# Dealer Rules
# The dealer must hit until she has at least 17.
# If the dealer busts, then the player wins.
# If the dealer, hits 21, then the dealer wins.
# If, however, the dealer stays, then we compare the sums of the two hands between the player and dealer; higher value wins.

class Card

  def initialize(s, v)
    attr_accessor :suit, :value

    @suit = s
    @value = v
  end

  def show_card
    puts "You have a #{suit} of #{value}."
  end

end

class Deck

  def create_deck

  end

  def shuffle_deck

  end

  def deal_card
    # this should deal a card from the deck
  end

end

class Dealer

  # Calculate the total of players cards
  def calculate_dealer_total

  end

end

class Player

  def calculate_player_total

  end

end

class game_engine

  def calculate_winner
    # Calculate winner
  end

  def calculate_player_total

  end


end

# Calculate winner: Would this be a module, or would it be in the game engine class?