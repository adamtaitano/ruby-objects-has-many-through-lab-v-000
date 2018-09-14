class Song
  attr_writer :name
  @@all = []
  
  def initialize(name)
    @name = name
  end
end
