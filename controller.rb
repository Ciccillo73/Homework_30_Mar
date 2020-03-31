require('sinatra')
require('sinatra/contrib/all') if development?

require_relative('./models/ropasc')
also_reload('./models/*')

get '/vs_friend/:player1/:player2' do
  player1 = params[:player1]
  player2 = params[:player2]
  @result = Ropasc.check(player1, player2)
  erb(:result)
end

get '/vs_cpu/:player1' do
  player1 = params[:player1]
  @result = Ropasc.check_cpu(player1)
  erb(:result)
end

get '/' do
  erb(:home)
end

get '/rules' do
  erb(:rules)
end

get '/vs_friend' do
  erb(:vs_friend)
end

get '/vs_cpu' do
  erb(:vs_cpu)
end
