class Artist
    attr_accessor :name, :genre

    @@all = []

    def initialize(name)
        @name = name
        @genre = genre
        @@all << self
        @songs = []
    end

    def self.all 
        @@all
    end

    def save
        @@all << @name
    end

    def self.destroy_all
        @@all = []
    end

    def songs
        Song.all.select {|song| song.artist == self}
    end

    def add_song(song)
        @songs << song
        if song.artist == nil then song.artist = self
    end
end