class Genre
  attr_accessor :name, :song, :artist
  @@all = []

  def initialize(name)
    @name = name
    @@all  << self
  end

  def songs
    Song.all.find_all{|x| x.genre == self}
  end

  def artists
    Artist.all.find_all{|x| x.genre == self}
  end

  def self.all
    @@all
  end
end
