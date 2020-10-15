class Genre
  
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
    
  end






# require "pry"

# class Genre
  
#   attr_accessor :name, :artist, :song
  
#   @@all = []
  
#   def initialize(name)
#     @name = name
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


# def self.create(name)
#     genre = Genre.new(name)
#     genre.save
#     genre
#   end

  
#   def songs
#     @songs
#   end  
  
#   # def artists
#   #   Song.all.select {|song| song.artist == self}
#   # end
# end