class Post
  attr_accessor :title, :author

  @@all = []

  def initialize(title=nil, author=nil)
    @title = title
    @author = author
    @@all << self
  end

  def author_name
    self.author.name unless self.author == nil
  end

  def self.all
    @@all
  end
end