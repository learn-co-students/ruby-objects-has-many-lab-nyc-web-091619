#require_relative './post'

class Author
    attr_accessor :name, :posts

    def initialize(name)
        @name = name
    end

    def posts
        Post.all.select {|post| post.author == self}
    end

    def add_post(post)
        post.author = self
    end

    def add_post_by_title(post)
        new_post = Post.new(post)
        add_post(new_post)
    end

    def self.post_count
        artist_posts = Post.all.select do |post|
            post.author = self
        end
        artist_posts.length
    end
end