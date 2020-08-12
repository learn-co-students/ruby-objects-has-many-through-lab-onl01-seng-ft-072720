class Artist  
    attr_accessor :name, :song
    
    @@all = []  
    
    def initialize(name)
      @name = name   
      @@all << self 
    end 
  
    def self.all 
      @@all 
    end 
    
    def new_song(name, genre)
      Song.new(name, self, genre)
    end 
    
    def songs 
      Song.all.select { |songs| songs.artist == self }
    end 
    
    def genres 
      Song.all.map { |songs| songs.genre }
    end 
  
end 