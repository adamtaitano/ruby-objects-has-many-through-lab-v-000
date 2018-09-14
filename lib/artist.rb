class Artist
  attr_reader :name, :songs
  @@all = []
  
  def initialize(name)
    @name = name
    @songs = []
    @@all << self
  end
  
  def self.all
    @all
  end
  
  def self.new_song(song_name)
    new_song = Song.new(song_name)
    new_song.artist = self
  end
  
  def self.songs
    Song.all.select do |song|
      song.artist == self
    end
  end
  
  def self.genres
    own_songs = self.songs
    own_songs.select do |song|
      song.genre
    end
  end

end
