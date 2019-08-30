#class for Model3 goes here
#Feel free to change the name of the class
class Song
    attr_accessor :artist, :genre, :name
    @@all = []
    def initialize(artist, genre, song)
        @artist = artist
        @genre = genre
        @name = song
        @@all << self
    end
    def self.all
        @@all
    end
end
