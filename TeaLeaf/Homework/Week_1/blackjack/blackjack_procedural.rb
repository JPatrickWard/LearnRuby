# Blackjack game
# Date: May 5, 2014
# Assignment Description: https://www.gotealeaf.com/lessons/f4d7b093/assignments/1653
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

# Psuedo Code

# Item: Create a method to generate the cards in the deck
    # Assume a single Deck
    # Face cards: Value of numerical value they show
    # Suite Cards: 10 Points;
    # Aces: worth 11 points, or 1 point
# Item: Have a way to keep track of the cards that have been given, and to whom they were given.
    # Keep track of Player's name and score
# Item: Keep track of the cards played, during each run to 21.



def add_card_values(cards)
  # [["9", "Club"], ["7", "Diamond"].....]
  arr = cards.map{|e| e[0]}
  total = 0
  # convert string value to fixnum
  arr.each do |value|
    if value == "Ace"  # Handles the 11 if it's an Ace
      total += 11
    elsif value.to_i == 0  # Handles Jack, Queen and King
      total += 10
    else total += value.to_i
    end
  end

    # Now, correct for Ace
    arr.select{|e| e == "Ace"}.count.times do
      total -= 10 if total > 21
    end

  #return the value
  total # implicit return
end


# Start the game

puts ' Welcome to the BlackJack game. Please enter your name. '
player_name = "Patrick"
puts "Ok #{player_name}, let\'s begin!"

# Create an Array of cards
cards = %w(2 3 4 5 6 7 8 9 10 Jack Queen King Ace)
suits = %w(Spade Heart Club Diamond)
deck = cards.product(suits)
deck.shuffle!


# Now pop each card from the deck and deal it out as needed,

# Save each card in an array of dealer and player

dealercards = []
playercards = []

playercards << deck.pop
dealercards << deck.pop
playercards << deck.pop
dealercards << deck.pop
puts

dealertotal = add_card_values(dealercards)
playertotal = add_card_values(playercards)

# Display what Dealer and player have
puts "Dealer has: #{dealercards[0]} and #{dealercards[1]}. Total is: #{dealertotal}."
puts ""
puts "#{player_name} has #{playercards[0]} and #{playercards[1]}. Total is: #{playertotal}."
puts ""


if playertotal == 21
  puts "Blackjack!!  You won."
  exit  # Exit will quit the program
end

# if dealertotal == 21
#   puts "Dealer hit BlackJack.  You Lose!"
#   exit
# end

# Player Turn


#Player continues to hit until they either bust or stay
while playertotal < 21
  puts ""
  puts "1)Hit or 2)Stay?"
  hit_or_stay = gets.chomp

  if !['1', '2'].include?(hit_or_stay)
    puts "ERROR!! Choose 1 or 2"
    next
  end

  if hit_or_stay == "2"
    puts 'Ok, Stay.'
    break # Breaks out of the while loop
  end

  # if hit_or_stay == "1"  #This line causes game to end after stay.
    newcard = deck.pop
    puts "Your new card is #{newcard}"
    playercards << newcard
    playertotal = add_card_values(playercards)
    puts "Total is: #{playertotal}"
    puts ""
    if playertotal == 21
      puts "You won.  Good Job"
      exit
    elsif playertotal > 21
      puts "Well, crap!!  You busted!"
      exit
    end
 end

  # dealer turn

  if dealertotal == 21
    puts "Dealer hit BlackJack, so YOU LOOSE!"
    exit
  end

  # Dealer must continue hitting if his total is less than 17.
  # If dealer total is > 17, dealer can stay.

  while dealertotal < 17
    housecard = deck.pop
    puts "Dealer card is #{housecard}"
    dealercards << housecard
    dealertotal = add_card_values(dealercards)
    puts "Dealer total is #{dealertotal}"
    if dealertotal == 21
      puts "Too bad, Dealer won.  You lose."
      exit
    elsif dealertotal > 21
      puts "Dealer BUSTERD!  You WIN!"
      exit
    end
  end

# Compare
  puts ""
  puts "Dealer's cards are: "
  dealercards.each do |card|
    puts "=> #{card}"
  end
  puts "Dealer Total is #{dealertotal}"
  puts ""
  puts "#{player_name}, your cards are: "
  playercards.each do |card|
    puts "=> #{card}"
  end
  puts "And your total is: #{playertotal}"
  puts ""

  if dealertotal > playertotal
    puts "Line 178, Dealer won."
  elsif dealertotal < playertotal
    puts "line 180 #{player_name}, you won!"
  else
    puts "No winner.  Tied game."
  end
exit