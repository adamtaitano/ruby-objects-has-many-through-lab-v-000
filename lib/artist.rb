class Artist
  attr_reader :name
  @@all = []
  
  def initialize(name)
    @name = name
    @songs = []
    @@all << self
  end
  
  def self.all
    @all
  end
  
  def add_song(song, artist, genre)
    new_song = self.new_song(song, self, genre)
    @songs << song
    new_song.artist = self
  end
  
  def new_song(song_name, genre)
    new_song = Song.new(song_name, self, genre)
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
