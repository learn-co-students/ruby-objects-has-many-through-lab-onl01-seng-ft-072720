class Song 
  attr_accessor :title, :song, :genre, :artist
  
  @@all = []
  
  def initialize(title, artist, genre)
    @title = title
    @genre = genre
    @artist = artist
    save
  end
  
  def save
    @@all << self
  end
  
  def self.all
    @@all
  end
  
end