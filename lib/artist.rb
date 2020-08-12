class Artist
  attr_accessor :name, :genre

  @@all = []

  def initialize(name)
    @name = name
    # @genre = genre
    @@all << self
  end

  def self.all
    @@all
  end

  def new_song(title, genre)
    Song.new(title, self, genre)
  end

  def songs
    Song.all.select do |song|  # returns all songs associated with this Artist
      song.artist == self
    end
    # song.artist
  end

  def genres
    songs.map do |song|
      song.genre
    end
  end



end
