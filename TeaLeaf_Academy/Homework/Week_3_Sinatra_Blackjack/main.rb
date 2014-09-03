require 'rubygems'
require 'sinatra'

set :sessions, true


get '/' do  # This handles when I go to localhost:9393
  # if user exists, then progress to rest of the game.
  # Else redirect to new user forum.
  if session[:player_name]
    # progress to the game
    redirect '/game'
  else
    redirect '/new_player'
  end

end

get '/new_player' do
  erb :new_player
end

post '/new_player' do
  session[:player_name] = params[:player_name]
  # progress to the game, now that I have player name.
  redirect '/game'
end

get '/game' do
  # setup initial game values
  # render the template
  # Initialize Game

  suits = ['C', 'H', 'S', 'D']
  values = ['K', 'A', 'J', 'Q', '10', '6', '2', '7', '3', '9', '4', '8', '5']
  session[:deck] = suits.product(values).shuffle!
  # Deal Cards
  session[:dealer_cards] = []
  session[:player_cards] = []
  session[:dealer_cards] << session[:deck].pop
  session[:player_cards] << session[:deck].pop
  session[:dealer_cards] << session[:deck].pop
  session[:player_cards] << session[:deck].pop

  erb:game

  # will Need Dealer Cards
    # Will need Player Cards
end
