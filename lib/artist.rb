class Artist 
  @@all = []
  attr_accessor :name 
  
  def self.all
    @@all 
  end
  
  def initialize(name)
    @name = name 
    @@all << self
  end
  
  def new_song(name, genre)
    Song.new (name, self, genre)
  end
  
end