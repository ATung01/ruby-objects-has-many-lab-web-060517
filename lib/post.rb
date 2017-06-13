class Post
attr_accessor :author
attr_reader :title

  def initialize(title)
    @title = title
  end

  def author_name
    return nil if @author == nil
    @author.name
  end

end
