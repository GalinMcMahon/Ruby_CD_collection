class Artists
  @@artists = []

  define_method(:initialize) do |artist_name|
    @artist_name = artist_name
    @id = @@artists.length().+(1)
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
  #
  # define_singleton_method(:find) do |id|
  #   found_artist = nil
  #   @@artists.each() do |find_artist|
  #     if find_artist.id().eql?(id)
  #       found_artist = find_artist
  #     end
  #   end
  #   found_artist
  # end
end
