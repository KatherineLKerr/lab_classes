class Library

  def initialize(name, books)
    @name = name
    @books = books
  end

  def all_books(library)
    return @books
  end

  def get_book_by_title(title)
    for book in @books
      if :title == title
        return book
      end
    end
  end

end
