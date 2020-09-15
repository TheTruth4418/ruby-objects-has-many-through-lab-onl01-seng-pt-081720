class Artist
  attr_accessor :name
  @@all = []
  def initialize(name)
    @name = name
    @@all << name
  end

  def new_song(name,genre)
    song = Song.new
    song.name = name
    song.genre = genre
  end

  def songs

  end

  def genres

  end

  def self.all
    @@all
  end
end
