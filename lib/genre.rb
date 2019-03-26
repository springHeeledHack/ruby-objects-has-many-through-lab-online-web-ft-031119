class Genre 
  @@all = []
  attr_reader :name 
  def self.all
    @@all
  end
  
  def initialize(name)
    @name = name 
    @@all << self 
  end
  
  def songs 
    Song.all.select{|song| song.genre == self}
  end
  
  def artists 
    artists = []
    self.songs.each{|song| artists << song.artist}
    artists
  end
end