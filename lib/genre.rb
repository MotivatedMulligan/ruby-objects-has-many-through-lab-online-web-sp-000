class Genre
  attr_accessor :name
  @@all =[]
  def initialize(name)
    @name = name
    @@all << self
  end
  def songs
    Song.all.select do |song|
      song.genre == self
    end
  end
  def self.all
@@all
end
 def artists
   self.songs.map {|song| song.artist }
 end

end
