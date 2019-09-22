require 'pry'

class Artist 

    attr_accessor :name

    def initialize (name)
        @name = name
    end

    def songs
        Song.all.select { |song| song.artist.name == self.name }
    end

    def add_song(song_obj)
        song_obj.artist = self
    end

    def add_song_by_name(song_name)
        new_song = Song.new(song_name)
        # binding.pry
        new_song.artist = self
    end

    def self.song_count
        Song.all.count 
    end 

end # end of the Artist class