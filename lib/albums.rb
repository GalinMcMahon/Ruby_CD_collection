class Albums
  @@albums = []

  define_method(:initialize) do |album_name|
    @album_name = album_name
  end

  define_method(:album_name) do
    @album_name
  end

  define_singleton_method(:all) do
    @@albums
  end
end
