class Post
  def initialize(title)
    @title = title
    Author.post_count += 1
  end

  attr_accessor :author
  attr_reader :title

  def author_name
    self.author ? self.author.name : self.author
  end

end
