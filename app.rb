require('sinatra')
require('sinatra/reloader')
also_reload('lib/**/*.rb')
require('./lib/coin_counter')
require('pry')

get('/') do
  erb(:input)
end



get('/output')do

coin_input = params.fetch("pennies").to_i

coin= Coin.new()
@coins = coin.check(coin_input)

  erb(:output)
end
