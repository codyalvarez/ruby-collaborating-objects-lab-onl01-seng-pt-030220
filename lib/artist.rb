class Artist
  @@all = []
  attr_accessor :name, :songs

  def initialize(name)
    @name = name
    @songs = []
  end

  def self.all
    @@all
  end

  def add_song(song)
    @songs << song
  end

  def sef.find_or_create_by_name(name)
    self.find(name) ? self.find(name) : self.create(name)
  end
end
