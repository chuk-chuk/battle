require 'sinatra/base'
require './lib/player'
require './lib/game'

class Battle < Sinatra::Base
  enable :sessions

  get '/' do
    erb :index
  end

  post '/names' do
    player_1 = Player.new(params[:player_1_name])
    player_2 = Player.new(params[:player_2_name])
    $game = Game.new(player_1, player_2)
    redirect '/play'
  end

  get '/play' do
    @game = $game
    @game.switch_turns unless @game.first_turn == true
    erb :play
  end

  get '/attack' do
    @game = $game
     @game.attack
    erb :attack
  end

  # post '/play' do if you want to stay on the same page post '/play2' or post '/play3'
  #   @game = $game
  #   @game.attack(@game.player_2)
  #   @game.switch_turns
  #   redirect '/play'
  # end

#  What is 'Routing' in a web application? How does it fit into the client-server model of the web? How is it separate from other web application concerns?


run! if app_file == $0

end
