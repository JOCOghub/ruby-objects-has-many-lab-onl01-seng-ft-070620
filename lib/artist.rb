class Artist
  attr_accessor :name
 
  @@all = []
  
  def initialize(name)
    @name = name
    @@all << self
  end
  
  def self.all
    @@all
  end 
  
  def add_song(song)
    artist_song = song
  end
   
  def add_song_by_name(song_name)
    song = Song.new(song_name)
    add_song(song_name)
  end
 
  def song.count
    count = 0
    Song.all.each {|song| count += song}
    count
    
  end
end