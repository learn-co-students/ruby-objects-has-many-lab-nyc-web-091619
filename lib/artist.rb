#require_relative './song'

class Artist
    attr_accessor :name, :songs

    def initialize(name)
        @name = name
    end

    def songs
        Song.all.select {|song| song.artist == self}
    end

    def add_song(song)
        song.artist = self
    end

    def add_song_by_name(song)
        new_song = Song.new(song)
        add_song(new_song)
    end

    def self.song_count
        artist_songs = Song.all.select do |song|
            song.artist = self
        end
        artist_songs.length
    end
end