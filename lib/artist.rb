
class Artist
  attr_accessor :name, :songs

  @@all = []  #stores all instances of Artist

  def initialize(name)
    @name = name
    @@all << self
  end

  def add_song(song)
    self.songs << song
    self    #Artist.songs reader returns all songs
  end

  def save
    @@all << self     #saves all created instances of Artist class in
    self                #@@all class variable
  end

  def self.all      #class method all returns all instances of Artist class
    @@all
  end

  def self.find_or_create_by_name(name)   #class method uses find/create class
    if self.find(name)
      self.find(name)
    else
      self.create(name)
    end
  end

  def self.find(name)     #class method detects instances from @@all class variable
    self.all.detect { |artist| artist.name == name }
  end

  def self.create(name)   #class method creates & stores instances vs initializing
    artist = Artist.new(name)
    artist.save
    artist
  end

  def print_songs
    songs.each { |song| puts song.name }
  end
end
