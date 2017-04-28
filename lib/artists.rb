class Artists
  @@artists = []

  define_method(:initialize) do |artist_name|
    @artist_name = artist_name
    @id = @@artists.length().+(1)
    @cds = []
  end
  #
  define_method(:artist_name) do
    @artist_name
  end
  #
  define_singleton_method(:all) do
    @@artists
  end

  define_method(:save) do
    @@artists.push(self)
  end
  
  define_singleton_method(:clear) do
    @@artists = []
  end


  define_method(:id) do
    @id
  end

  define_singleton_method(:find) do |id|
    found_artist = nil
    @@artists.each() do |artist|
      if artist.id().eql?(id.to_i)
        found_artist = artist
      end
    end
    found_artist
  end

  define_method(:cds) do
    @cds
  end

  # @artist.add_album(@album)
  define_method(:add_album) do |album|
    @cds.push(album)
  end
end
