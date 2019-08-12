require './book.rb'
class AudioBook < Book
    def listen
        @finished = true
    end
end

audioBook = AudioBook.new("audioBook", "test")
puts audioBook
puts audioBook.listen