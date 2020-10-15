require "pry"
  
  
class Artist
  
    attr_accessor :name
    attr_reader :songs
  
    @@all = []
  
    def initialize(name)
      @name = name
      @songs = []
    end
  
    def self.all
      @@all
    end
  
    def self.destroy_all
      self.all.clear
    end
    
    def save
      @@all << self
    end
    
    def self.create(name)
      new_song = self.new(name)
      new_song.save
      new_song
    end
    
    def add_song(song)
      #binding.pry
      if !self.songs.include?(song)
        @songs << song
      end
      if !song.artist
        song.artist = self
      end
    end
    
    def genres
      songs.genre.map do |genre|
        genre
      end
    end

  end






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