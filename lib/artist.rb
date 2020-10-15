# require "pry"

# class Artist
  
#   attr_accessor :name
  
#   @@all = []
  
#   def initialize(name)
#     @name = name
#     @@all << self
#     @songs = []
#   end


#   def self.all
#     @@all
#   end
  
  
#   def save
#     self.class.all << self
#   end
  
  
#   def self.destroy_all
#     self.all.clear
#   end


#   def self.create(name)
#     artist = Artist.new(name)
#     artist.save
#     artist
#   end
  
  
#   def add_song(song)
    
#     if song.artist == nil
#       @songs << song
#     song.artist = self
#     end
#   end
  
  
#   def songs
#     Song.all.select {|song| song.artist == self}
#     @songs
#   end
  
#   def genres
    
#   end  
# end