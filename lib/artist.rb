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
#####
  def songs
    Song.all.select do |song| song.artist == self
    end
  end
##########

  def new_song(name, genre)
  Song.new(name, self, genre)
end


   def genres
   self.songs.map {|song| song.genre}
   end


end
