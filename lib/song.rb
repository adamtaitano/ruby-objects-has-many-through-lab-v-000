class Song
  attr_accesor :name
  @@all = []
  
  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @@all.clear
  end
  
  def self.all
    @@all
  end
  
end
