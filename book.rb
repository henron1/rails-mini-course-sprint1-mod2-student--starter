module Lendable
    def lend
        if count > 0
            newCount = count - 1
            @count = newCount
        else
            "try again"
        end
    end
end

class Book
    include Lendable
    attr_reader :title, :author
    attr_writer :finished
    attr_accessor :count
    def initialize(title, author, finished = false, count = 5)
        @title = title
        @author = author
        @finished = finished
        @count = count
    end

    def recommended_books
        [
            Book.new("The Well-Grounded Rubyist", "David A. Black", true, 4),
            Book.new("Practical Object-Oriented Design in Ruby", "Sandi Metz", true, 4),
            Book.new("Effective Testing with RSpec 3", "Myron Marston", true, 4),
        ]
    end


    def to_s
        "Title: #{title}, Author: #{author}, count: #{count}"
    end
end

book = Book.new("Haunted", "Chuck Palanhuik", true, 5)
# lentBook = book.lend
puts book.recommended_books
puts book
