require('minitest/autorun')
require('minitest/rg')
require_relative('../library')

class TestLibrary < MiniTest::Test

  def setup
    @library = Library.new("libraryname", [{
                                            title: "lord_of_the_rings",
                                            rental_details: {
                                              student_name: "Jeff",
                                              date: "01/12/16"
                                            }
                                          },
                                            {
                                             title: "jurassic_park",
                                             rental_details: {
                                               student_name: "philip",
                                               date: "14/12/16"
                                            }
                                          }])
  end

  def test_all_books
    library = @library
    assert_equal(library.all_books(@library), [{
                                            title: "lord_of_the_rings",
                                            rental_details: {
                                              student_name: "Jeff",
                                              date: "01/12/16"
                                            }
                                          },
                                            {
                                             title: "jurassic_park",
                                             rental_details: {
                                               student_name: "philip",
                                               date: "14/12/16"
                                            }
                                          }])
  end

  def test_get_book_title
    library = @library
    assert_equal({
                  title: "lord_of_the_rings",
                  rental_details: {
                    student_name: "Jeff",
                    date: "01/12/16"
                    }
                  }, library.get_book_by_title("lord_of_the_rings"))
  end


end
