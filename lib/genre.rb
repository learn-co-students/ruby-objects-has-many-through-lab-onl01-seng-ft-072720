class Genre

   @@all = []

   attr_accessor :name, :genre

   def initialize(name)
      @name = name
      @@all << self
   end

   def songs
      Song.all.select {|s| s.genre ==self}
   end

   def artists
      songs.collect {|s| s.artist}
   end

   def self.all
     @@all
   end
end
