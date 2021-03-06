require "pry"

class Genre
  
  attr_accessor :name
  attr_reader :artist, :song
  
  @@all = []
  
  def initialize(name)
    @name = name
    @songs = []
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
    genre = Genre.new(name)
    genre.save
    genre
  end

  
  def songs
    @songs
  end  
end