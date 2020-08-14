class Artist

   @@all = []

   attr_accessor :name, :song

   def initialize(name)
     @name = name
     @@all << self
   end

   def songs
       Song.all.select {|s| s.artist == self}
   end

   def new_song(name, genre)
     Song.new(name, self, genre)
   end

    def genres
      songs.collect {|s| s.genre}
    end

   def self.all
     @@all
   end
end
