require "artists"
require "rspec"
require "pry"


describe("Artists") do

  describe("#artist_name") do
    it("returns name of artist") do
      new_artist = Artists.new("David Bowie")
      expect(new_artist.artist_name()).to(eq("David Bowie"))
    end
  end

  describe(".all") do
    it("is empty at first") do
      expect(Artists.all()).to(eq([]))
    end
  end

  describe("#save") do
    it("adds an artist to the array of saved artists") do
      new_artist = Artists.new("David Bowie")
      new_artist.save()
      expect(Artists.all()).to(eq([new_artist]))
    end
  end

  describe(".clear") do
    it("clears the artist array") do
      Artists.new("David Bowie").save()
      Artists.clear()
      expect(Artists.all()).to(eq([]))
    end
  end

  describe("#id") do
    it("returns the id of the artist") do
      new_artist = Artists.new("David Bowie")
      expect(new_artist.id()).to(eq(1))
    end
  end

  describe(".find") do
    it("returns artist name by its id number") do
      new_artist = Artists.new("David Bowie")
      new_artist.save()
      expect(Artists.find(new_artist.id())).to(eq(new_artist))
    end
  end

  describe("#add_album") do
    it("adds a new album to an artist") do
      new_artist = Artists.new("David Bowie")
      new_album = Albums.new("Let's Dance")
      new_artist.add_album(new_album)
      expect(new_artist.cds()).to(eq([new_album]))
    end
  end
end
