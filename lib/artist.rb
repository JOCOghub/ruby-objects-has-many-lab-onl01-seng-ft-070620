class Artist
  attr_accessor :name
 
  def initialize(name)
    @name = name
  end
 
  def add_song_by_name(song_name)
    song = Song.new(song_name)
    add_song(song_name)
  end
 
  def songs
    Song.all.select {|song| song.artist == self}
  end
end