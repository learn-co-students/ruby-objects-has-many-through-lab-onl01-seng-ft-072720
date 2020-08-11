require "pry"
class Artist 
  attr_accessor :name 
  @@all = []
  
  def initialize(name)
    @name = name
    @@all << self 
  end
  
  def self.all 
    @@all 
  end

  def songs 
    Song.all.select {|a| a.artist == self}
  end
  
  def new_song(name, genre)
    Song.new(name, self, genre)
  end

  def genres 
    self.songs.collect {|g| g.genre}
end
end
