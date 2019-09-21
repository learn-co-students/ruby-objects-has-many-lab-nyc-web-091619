require 'pry'

class Song

    @@all = []
    attr_accessor :name, :artist

    def initialize(name)
        @name = name
        @@all.push(self)
    end

    def artist=(artist)
        @artist = artist
        @artist.songs.push(self)
    end

    def artist_name
        if self.artist
          self.artist.name
        else nil
        end
      end
    

    def self.all
        @@all
    end

    
end