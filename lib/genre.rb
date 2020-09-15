class Genre
  @@all = []

  def initialize(name)
    @name = name
    self.all << name
  end

  def songs

  end

  def artists

  end

  def self.all
    @@all
  end
end
