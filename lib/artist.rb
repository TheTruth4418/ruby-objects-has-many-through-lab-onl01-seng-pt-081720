class Artist
  attr_accessor :name
  @@all = []
  def initialize(name)
    @name = name
    @@all << self
  end

  def new_song(name,genre)
    song = Song.new
    song.name = name
    song.genre = genre
  end

  def songs
    Song.find_all{|x| x.artist == self}
  end

  def genres
    Genre.find_all{|x| x.artist == self}
  end

  def self.all
    @@all
  end
end
