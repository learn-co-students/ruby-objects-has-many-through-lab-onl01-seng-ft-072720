class Artist 

attr_accessor :name, :artist, :genre

@@all = []


  def initialize(name) 
    @name = name 
    save
  end  

  def self.all
    @@all
  end 
  
    #iterates through all songs and finds the songs that belong to that artist. Try using select to achieve this.
  def songs 
    Song.all.select {|song| song.artist == self}
  end 
 
  #takes in an argument of a name and genre, creates a new song. That song should know that it belongs to the artist.
  def new_song(name, genre)
    song = Song.new(name, self, genre)
    self.songs.last
  end 
  
  #iterates over that artist's songs and collects the genre of each song.
  def genres 
    Song.all.collect do |song|
    song.genre
    end
  end 
  
  
  def save 
    @@all << self 
  end
  
  
end 