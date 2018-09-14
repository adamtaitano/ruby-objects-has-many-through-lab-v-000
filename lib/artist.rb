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
  
  def add_song(song)
    new_song = self.new_song(song)
    @songs << song
    new_song.artist = self
  end
  
  def new_song(song_name)
    new_song = Song.new(song_name)
    new_song.artist = self
  end
  
  def songs
    Song.all.select do |song|
      song.artist == self
    end
  end
  
  def genres
    own_songs = self.songs
    own_songs.select do |song|
      song.genre
    end
  end

end
