require('minitest/autorun')
require('minitest/rg')
require_relative('../student')

class TestStudent < Minitest::Test

  def setup
    @student = Student.new("Asma", "G8")
  end

  def test_get_student_name
    result = @student.get_student_name()
    assert_equal("Asma", result)
  end

  def test_get_student_cohort
    result = @student.get_student_cohort()
    assert_equal("G8", result)
  end

  def test_set_student_name
    @student.set_student_name("Sarah")
    assert_equal("Sarah", @student.get_student_name())
  end

  def test_set_student_cohort
    @student.set_student_cohort("G7")
    assert_equal("G7", @student.get_student_cohort())
  end

  def test_get_student_to_talk
    result = @student.get_student_to_talk()
    assert_equal("I can talk!", result)
  end

  def test_say_favourite_language
    result = @student.say_favourite_language("Ruby")
    assert_equal("I love Ruby", result)
  end

end
