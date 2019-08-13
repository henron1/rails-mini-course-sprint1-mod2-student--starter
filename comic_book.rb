require './book.rb'
class ComicBook < Book
    def read
        @finished = true
    end
end

comicBook = ComicBook.new("comicBook", "test test for comicbook")
puts comicBook
puts comicBook.read