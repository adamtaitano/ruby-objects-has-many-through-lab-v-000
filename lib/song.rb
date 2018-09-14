class Song
  attr_accesor :name
  @@all = []
  
  def initialize(name)
    @name = name
    @@all.clear
  end
end
