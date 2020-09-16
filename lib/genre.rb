class Genre
  @@all = []

  def initialize(name)
    @name = name
    @@all  << self
  end

  def songs
    Song.find_all{|x| x.genre == self}
  end

  def artists
    Artist.find_all{|x| x.genre == self}
  end

  def self.all
    @@all
  end
end
