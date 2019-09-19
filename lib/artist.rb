require 'pry'
class Artist
  attr_accessor :name

  @@all = []

  def initialize(name=nil)
    @name = name
    @@all << self
  end

  def songs
    Song.all
  end

  def add_song(song)
    song.artist = self
    # binding.pry
  end

  def add_song_by_name(song)
    Song.new(song, self)
    # binding.pry
  end

  def self.song_count
    Song.all.count
  end

  def self.all
    @@all
  end
end