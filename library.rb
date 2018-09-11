class Library

  # attr_accessor :title, :student_name, :date
  def initialize(books)
    @library = []
    if books.length() > 0
      for book in books
        # @i_book = {}

        # to allow nested hashes when the depth is unknown - to construct arbitrarily sized tree structures on the fly
        i_book = Hash.new { |hash, key| hash[key] = Hash.new(&hash.default_proc) }
        #### i_rental_details = {}
        # i_book_rental_details = {}
        i_book[:title] = book[:title]
        #for book_rental_details in book[:rental_details]
        #  i_book_rental_details[:rental_details][:student_name]= "hello"
          # i_book_rental_details[:student_name] = book_rental_details[:student_name]
          # i_book_rental_details[:date] = book_rental_details[:date]
        ###  i_rental_details[:student_name] = book[:rental_details][:student_name]
        ###  i_rental_details[:date] = book[:rental_details][:date]
        ###  @i_book[:rental_details] = i_rental_details
        i_book[:rental_details][:student_name] = book[:rental_details][:student_name]
        i_book[:rental_details][:date] = book[:rental_details][:date]
        # p book[:rental_details][:student_name]
        # p   book[:rental_details]
        #  end
        # @i_book[:student_name] = @i_book_rental_details
       @library.push(i_book)
      end
    end
  end

  def get_books_titles()
    for book in @library
      return book[:title]
    end
    # return @@library[2][:titles]
  end

  def get_book_info(title)
    for book in @library
       if book[:title] == title
         return book
       end
    end
  end


  def get_book_rental_detail(title)
    for book in @library
       if book[:title] == title
         return book[:rental_details]
       end
    end
  end

  def get_number_0f_books()
    return @library.length()
  end

  def add_to_book_list(title)
    book = Hash.new { |hash, key| hash[key] = Hash.new(&hash.default_proc) }
    book[:title] = title
    book[:rental_details][:student_name] = ""
    book[:rental_details][:date] = ""
    @library.push(book)
  end

  def update_rental_details(title, new_student_name, new_date)
    for book in @library
       if book[:title] == title
         book[:rental_details][:student_name] = new_student_name
         book[:rental_details][:date] = new_date
       end
    end
  end


end
