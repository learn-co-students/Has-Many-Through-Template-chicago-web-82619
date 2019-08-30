#class for Model1 goes here
#Feel free to change the name of the class
class Artist
    attr_accessor :name
    @@all = []
    def initialize(name)
        @name = name
        @@all << self
    end
    def self.all
        @@all
    end
    def songs
        Song.all.select{|obj| obj.artist == self}
    end
    def add_song(genre, name)
        Song.new(self, genre, name)
    end
    def genres
        songs.map{|obj| obj.genre}
    end
end
