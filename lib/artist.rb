class Artist
  attr_accessor :name
 
  def initialize(name)
    @name = name
  end
 
  def add_song_by_name(song_name)
    song = Song.new(name, song)
    add_song(song)
  end
 
  def songs
    Song.all.select {|song| song.artist == self}
  end
end