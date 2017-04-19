require('sinatra')
require('sinatra/reloader')
require('pry')
require('./lib/scrabble_score')

get('/') do
  erb(:index)
end

get('/points') do
  @word = params.fetch('word')
  @points = params.fetch('word').scrabble()
  erb(:scrabble_points)
end
