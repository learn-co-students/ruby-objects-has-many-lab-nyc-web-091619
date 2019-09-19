class Artist 

  attr_reader :name 
  attr_accessor :song

  def initialize(name)
    @name =name
  end 

  def songs 
    Song.all
  end 

  def add_song(song)
    song.artist = self
  end 

  def add_song_by_name (name)
    new_song = Song.new(name)
    new_song.artist = self
  end 

 def self.song_count 
    Song.all.length
 end 


end 