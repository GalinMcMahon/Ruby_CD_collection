require 'sinatra'
require 'sinatra/reloader'
require './lib/albums'
require 'pry'

also_reload('lib/**/*.rb')

get('/') do
  erb(:index)
end
