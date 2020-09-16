class Artist
  attr_accessor :name
  @@all = []
  def initialize(name)
    @name = name
    @@all << self
  end

  def new_song(name,genre)
    Song.new(name,self,genre)
  end

  def songs
    Song.all.find_all{|x| x.artist == self}
  end

  def genres
    Genre.all.select{|x| x.artist == self}
  end

  def self.all
    @@all
  end
end
