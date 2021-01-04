class Genre
    attr_accessor :name

    @@all = []

    def initialize(name)
        @name = name
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

end