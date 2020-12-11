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
      erb :play
    end

    get '/p1-attack' do
      p 'hello world'
      @game = $game
      @game.attack(@game.player_2)
      erb :attack
    end

    get '/p2-attack' do
      p 'hello'
      @game = $game
      @game.attack(@game.player_1)
      erb :attack
    end

    run! if app_file == $0
end
