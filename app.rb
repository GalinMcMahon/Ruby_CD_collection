require 'sinatra'
require 'sinatra/reloader'
require './lib/albums'
require './lib/artists'
require 'pry'

also_reload('lib/**/*.rb')

get('/') do
  erb(:index)
end

get('/artists/new') do
  erb(:artists_form)
end

get('/artists') do
  @artists = Artists.all()
  erb(:artists)
end

post('/artists') do
  artist_name = params.fetch('artist_name')
  Artists.new(artist_name).save()
  @artists = Artists.all()
  erb(:artists)
end
