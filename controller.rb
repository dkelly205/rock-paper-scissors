require('sinatra')
require('sinatra/contrib/all')
require_relative('./models/game.rb')


get '/welcome' do
  erb(:welcome)
end

get '/result/:player1/:player2' do
  player1 = params[:player1]
  player2 = params[:player2]
  game = Game.new(player1, player2)
  @winner = game.result()
  erb(:result)
end
