require 'sinatra'
require 'sinatra/reloader'
require './lib/albums'
require './lib/artists'
require 'pry'

also_reload('lib/**/*.rb')

get('/') do
  erb(:index)
end

# post('new_artist') do
#   erb(:artists)
# end

get('/artists') do
  @artists = Artists.all()
  erb(:artists)
end
