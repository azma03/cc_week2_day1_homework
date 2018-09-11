require('minitest/autorun')
require('minitest/rg')
require_relative('../library')

class TestLibrary < Minitest::Test

  def setup
  @library = Library.new([
    @book1 = {
      title: "lord_of_the_rings",
      rental_details: {
        student_name: "Jeff",
        date: "01/12/18"
      }
    },
    @book2 = {
      title: "programming_fundamentals",
      rental_details: {
        student_name: "Asma",
        date: "15/06/19"
      }
    },
    @book3 = {
      title: "learn_ruby",
      rental_details: {
        student_name: "Sarah",
        date: "01/11/18"
      }
    }
  ])


      #@book1 = Library.new("lord_of_the_rings", "Jeff", "01/12/18")
     #  @book1 = Library.new({
     #    title: "lord_of_the_rings",
     #    rental_details: {
     #      student_name: "Jeff",
     #      date: "01/12/18"
     #    }
     #  })
     #
     #  @book2 = Library.new({
     #    title: "programming_fundamentals",
     #    rental_details: {
     #      student_name: "Asma",
     #      date: "15/06/19"
     #    }
     #  })
     #
     #  @book3 = Library.new({
     #    title: "learn_ruby",
     #    rental_details: {
     #      student_name: "Sarah",
     #      date: "01/11/18"
     #    }
     #  })
     #
     # @books = [@book1, @book2, @book3]
    #@books = [@book1]

  end

  def test_get_books_titles
    # result = "hello"#@books.get_books("learn_ruby")
    # assert_equal(false, result)
    result = @library.get_books_titles()
    #assert_equal("lord_of_the_rings", result)
    assert_equal(@book1[:title], result)
  end

  def test_get_book_info
    result = @library.get_book_info("lord_of_the_ring")
    assert_equal(@book1, result)
  end

  def test_get_book_rental_detail
    result = @library.get_book_rental_detail("lord_of_the_ring")
    assert_equal(@book1[:rental_details], result)
  end

  def test_get_number_0f_books
    result = @library.get_number_0f_books()
    assert_equal(3, result)
  end

  def test_add_to_book_list
    @library.add_to_book_list("new book")
    assert_equal(4, @library.get_number_0f_books())
  end

  def test_update_rental_details
    @library.update_rental_details("lord_of_the_ring", "Chris", "09/12/2018")
    assert_equal(@book3, @library.get_book_info("lord_of_the_ring"))
  end

end
