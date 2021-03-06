

require "pry"

class Song
  
  attr_accessor :name
  attr_reader :artist, :genre
  
  @@all = []
  
  def initialize(name, artist = nil, genre = nil)
    @name = name

    if artist
      self.artist = artist 
    end
    if genre
      self.genre = genre
    end
  end

  
  def self.all
    @@all
  end
  

  def save
    self.class.all << self
  end
  
  
  def self.destroy_all
    self.all.clear
  end
  

  def self.create(name)
    song = Song.new(name)
    song.save
    song
  end
  
  
  def artist=(artist)
    @artist = artist
    artist.add_song(self)
  end
  
  def genre=(genre)
    @genre = genre
    artist.add_song(genre)
  end

  
end