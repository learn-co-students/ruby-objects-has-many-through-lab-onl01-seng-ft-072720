class Genre 

attr_accessor :name, :genre, :song 

@@all = []


  def initialize(name) 
    @name = name 
    save
  end  
  
  def self.all
    @@all
  end 
  
  #iterates through all songs and finds the songs that belong to that genre.
  def songs
    Song.all.select {|song| song.genre == self}
  end 
  
  #iterates over the genre's collection of songs and collects the artist that owns each song.
  def artists 
    Song.all.collect do |song|
    song.artist
    end
  end 
  
  def save 
    @@all << self 
  end
  
  
  
  
end 