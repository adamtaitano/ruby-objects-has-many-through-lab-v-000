class Genre
  attr_accessor :name
  @@all = []
  
  def initialize(name)
    @name = name
    @@all << self
  end
  
  def self.all
    @@all
  end
  
  def self.songs
    Song.all do |song|
      song.genre == self
    end
  end
  
  def self.artists
    self.songs.select do |song|
      song.genre == self
    end
  end
  
  def add_song(song)
    
  end
end
