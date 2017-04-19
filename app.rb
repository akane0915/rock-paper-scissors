require('sinatra')
require('sinatra/reloader')
require('rspec')
require('pry')
require('./lib/rps')

get('/') do
  erb(:index)
end

get('/display') do
  @player1 = params.fetch('player1')
  @player2 = params.fetch('player2')
  @output = @player1.rps(@player2)
  erb(:display)
end
