class Song

    attr_accessor :name, :artist

    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end

    def artist=(artist)
        @artist = artist
        artist.songs << self
    end

    def self.all
        @@all
    end

    def artist_name
        if !self.artist
            return nil
        else
            self.artist.name
        end
    end
end

# s = Song.new('heelo')
# s1 = Song.new('hedfgbelo')
# s2 = Song.new('hefelo')