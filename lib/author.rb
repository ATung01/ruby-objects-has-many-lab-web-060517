class Author
  attr_accessor :name
  attr_reader :posts

  @@post_count = 0


  def initialize(name)
    @name = name
    @posts = []
  end

  def add_post(post)
    @posts << post
    post.author = self
    @@post_count += 1
  end

  def add_post_by_title(post_title)
    new_post = Post.new(post_title)
    self.add_post(new_post)

  end

  def add_song_by_name(name)
    song = Song.new(name)
    @songs << song
    song.artist = self
  end

  def self.song_count
    @@song_count
  end

  def self.post_count
    @@post_count
  end

end
