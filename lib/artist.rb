class Artist
  @@all = []
  attr_accessor :name, :artist, :genre, :song
  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
  @@all
   end
  def songs
    Song.all.select do |song| song.artist == self
    end
  end
  def new_song(name, artist, genre)
  Song.new(name, artist, genre) == self
  end
def genres
self.songs.map {|song| song.genre}
  #song.map do |song| song.genre
#end
end
end
