class Author
  attr_accessor :name, :posts
  @@post_count = 0

  def initialize(name)
    @name = name
    @posts = []
  end

  def posts
    Post.all.select {|post| post.author == self}
  end

  def add_post(post)
    @posts << post
    post.author = self
  end

  def add_post_by_title(title)
    post = Post.new(title)
    @posts << post
    post.author = self
  end

  def self.post_count
<<<<<<< HEAD
    Post.all.count
=======
    new_array = self.split(/[.?!]/).reject {|string| string.empty?}
    return new_array.length
>>>>>>> 01bc2a41cf2f2520b3a577470d6efc9fefbe09f7
  end
end
