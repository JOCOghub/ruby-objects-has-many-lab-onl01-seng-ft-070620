class Author
  attr_accessor :name
 
  @@all = []
  
  def initialize(name)
    @name = name
    @@all << self
  end
  
  def self.all
    @@all
  end 
  
  def add_song(post)
    post.author = self
  end
   
  def add_song_by_name(song_name)
    post = Post.new(song_name)
    post.author = self
  end
 
   def posts
    Song.all.select {|post| post.author == self}
   end
   
   def self.song_count
    Post.all.count
   end

end