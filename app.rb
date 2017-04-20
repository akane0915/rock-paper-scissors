require('sinatra')
require('sinatra/reloader')
require('rspec')
require('./lib/rps')
also_reload('lib/**/*.rb')

get('/') do
  erb(:index)
end

get('/display') do
  @player1 = params.fetch('player1')
  @player2 = params.fetch('player2')
  @output = @player1.rps(@player2)
  erb(:display)
end
