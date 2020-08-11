class Song 
  attr_accessor :title, :artist, :genre
  
  @@all = []
  
  def self.all
    @@all
  end
  
  def initialize(title, artist, genre)
    @title = title
    @artist = artist
    @genre = genre
    @@all.push(self)
  end
  
  
end