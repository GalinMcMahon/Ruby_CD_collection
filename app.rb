require 'sinatra'
require 'sinatra/reloader'
require './lib/albums'
require './lib/artists'
require 'pry'

also_reload('lib/**/*.rb')
# home page containing 2 links: one to see list of artists, one to add new artist
get('/') do
  erb(:index)
end
# click on 'Add a new artist to route to artist form'
get('/artists/new') do
  erb(:artists_form)
end
# click on 'Add Artist' in artist form to route to list of all artists (artists.erb)
get('/artists') do
  @artists = Artists.all()
  erb(:artists)
end
# push artist form "form action" to artist array
post('/artists') do
  artist_name = params.fetch('artist_name')
  Artists.new(artist_name).save()
  @artists = Artists.all()
  erb(:artists)
end
# click on artist name to route to artist page
get ('/artist/:id') do
  @artist = Artists.find(params.fetch('id').to_i())
  erb(:artist)
end

# enables 'add new album' to route to album form
get('/album_form') do
  erb(:album_form)
end
# click on 'Add Album' in album form to route to artist page (artist.erb)
get('/album_form') do
  @album = Albums.all()
  erb(:artist)
end

get ('/albums/:id') do
  @album = Albums.find(params.fetch('id').to_i())
  erb(:album)
end

get('/artists/:id/albums/new') do
  @artist = Artists.find(params.fetch('id').to_i())
  erb(:artist_albums_form)
end

post('/albums') do
  album_name = params.fetch('album_name')
  @album = Albums.new(album_name)
  @album.save()
  @artist = Artists.find(params.fetch('artist_id').to_i())
  @artist.add_album(@album)
  @artists = Artists.all()
  erb(:artists)
end
