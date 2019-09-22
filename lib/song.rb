class Song

    attr_accessor :artist, :name

    @@all = []

    def initialize (name)
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end

    def self.artist=(name)
        @artist = name
    end

    def artist_name
        if @artist
            @artist.name
        else
            nil
        end
    end
    

end     # ends Song class