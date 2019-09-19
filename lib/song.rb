require 'pry'
class Song
  attr_accessor :name, :artist

  @@all = []

  def initialize(name=nil, artist=nil)
    @name = name
    @artist = artist
    @@all << self
  end
  
  def self.all
    @@all
  end

  def artist_name
    # binding.pry
    self.artist.name unless self.artist == nil
  end
end