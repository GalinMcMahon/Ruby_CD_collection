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

  define_singleton_method(:find) do |id|
    found_album = nil
    @@albums.each() do |find_album|
      if find_album.id().eql?(id)
        found_album = find_album
      end
    end
    found_album
  end
end
