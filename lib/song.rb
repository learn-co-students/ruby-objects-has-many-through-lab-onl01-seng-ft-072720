class Song 
  attr_accessor :name, :artist, :genre
  
  @@all = []
  
  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    genre.songs << self if !!genre
    genre.artists << artist if !!genre && !!artist
    @@all << self 
  end
    
    def self.all
      @@all
    end
end