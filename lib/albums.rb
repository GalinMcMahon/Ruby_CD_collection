class Albums
  @@albums = []

  define_method(:initialize) do |album_name|
    @album_name = album_name
    @id = @@albums.length().+(1)
  end

  define_method(:album_name) do
    @album_name
  end

  define_singleton_method(:all) do
    @@albums
  end

  define_method(:save) do
    @@albums.push(self)
  end

  define_singleton_method(:clear) do
    @@albums = []
  end

  define_method(:id) do
    @id
  end
end
