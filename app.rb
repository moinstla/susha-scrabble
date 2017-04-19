require('sinatra')
require('sinatra/reloader')
require('pry')

get('/') do
  erb(:form)
end

get('/points') do
  @word = params.fetch('word')
  erb(:scrabble_points)  
end
