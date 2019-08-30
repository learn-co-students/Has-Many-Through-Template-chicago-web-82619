#class for Model2 goes here
#Feel free to change the name of the class
class Genre
    attr_reader :name
    @@all = []
    def initialize(name)
        @name = name
        @@all << self
    end
    def self.all
        @@all
    end
    def songs
        Song.all.select{|obj| obj.genre == self}
    end
    def add_song(artist, name)
        Song.new(artist, self, name)
    end
    def artists
        songs.map{|obj| obj.artist}
    end
end
