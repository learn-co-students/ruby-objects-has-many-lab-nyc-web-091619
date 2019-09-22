class Post
    attr_accessor :title, :author
    attr_reader

    @@all = []

    def initialize(title)
        @title = title
        @@all << self
    end

   def author_name
        if self.author
            self.author.name
        end
   end

    def self.all
        @@all
    end
    
end