class Author

  @@post_count = 0

  def initialize(name)
    @name = name
    @posts = []
  end

  def self.post_count=(num)
    @@post_count = num
  end

  attr_accessor :name

  def add_post(post)
    @posts << post
    post.author = self
  end

  attr_reader :posts

  def add_post_by_title(title)
    post = Post.new(title)
    @posts << post
    post.author = self
  end

  def self.post_count
    @@post_count
  end
end
