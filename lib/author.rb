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
  
  def add_post(post)
    post.author = self
  end
   
  def add_post_by_title(song_name)
    post = Post.new(song_name)
    post.author = self
  end
 
   def posts
    Post.all.select {|post| post.author == self}
   end
   
   def self.song_count
    Post.all.count
   end

end