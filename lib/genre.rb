class Genre 
  attr_accessor :name, :artists, :song
  @@all = []
  
  def self.all
    @@all
  end
  
  def initialize(name)
    @name = name 
    @@all.push(self)
  end
    
      def artists
     g = []
  songs.select do |song|
    g.push(song.artist)
  end
  g
end
  
    
    def songs 
      Song.all.select do |song|
    song.genre == self
  end
    end
    
end