require "albums"
require "rspec"
require "pry"


describe("Albums") do

  describe("#album_name") do
    it("returns name of album") do
      new_album = Albums.new("Let's Dance")
      expect(new_album.album_name()).to(eq("Let's Dance"))
    end
  end

  describe(".all") do
    it("is empty at first") do
      expect(Albums.all()).to(eq([]))
    end
  end

  describe("#save") do
    it("adds an album to the array of saved albums") do
      new_album = Albums.new("Let's Dance")
      new_album.save()
      expect(Albums.all()).to(eq([new_album]))
    end
  end

  describe(".clear") do
    it("clears the albums array") do
      Albums.new("Let's Dance").save()
      Albums.clear()
      expect(Albums.all()).to(eq([]))
    end
  end

  describe("#id") do
    it("returns the id of the album") do
      new_album = Albums.new("Let's Dance")
      expect(new_album.id()).to(eq(1))
    end
  end


  # describe(".find") do
  #   it("returns album name by its id number") do
  #     new_album = Albums.new("Let's Dance")
  #     new_album.save()
  #     expect(Albums.find(new_album.id())).to(eq(new_album))
  #
  #   end
  # end

end

 #
 # describe("#save") do
 #    it("adds an album to the array of saved albums") do
 #      new_album = Albums.new("Let's Dance")
 #      new_album.save()
 #      expect(Albums.all()).to(eq(["Let's Dance"]))
 #    end
 #  end
 #
 # describe(".clear") do
 #    it("empties out all of the saved albums") do
 #      Albums.new("Let's Dance").save()
 #      Albums.clear()
 #      expect(Albums.all()).to(eq([]))
 #    end
 #  end
