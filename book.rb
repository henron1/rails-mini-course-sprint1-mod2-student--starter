class Book
    attr_reader :title, :author
    attr_writer :finished
    attr_accessor :count
    def initialize(title, author, finished = false, count = 3)
        @title = title
        @author = author
        @finished = finished
        @count = count
    end

    def to_s
        "Title: #{title}, Author: #{author}"
    end
end

book = Book.new("Haunted", "Chuck Palanhuik")
puts book