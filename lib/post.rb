class Post

    attr_accessor :author, :title
    @@all = []

    def initialize (title)
        @title = title
        @@all << self
    end

    def self.all
        @@all
    end

    def self.author=(name)
        @author = name
    end

    def author_name
        if !@author
            return nil
        else
            return author.name
        end

    end
end # end of the Author class