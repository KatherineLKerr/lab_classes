require('minitest/autorun')
require('minitest/rg')
require_relative('../student_class')

class TestStudent < MiniTest::Test

  def test_student_name
    student = Student.new("Katherine", "E31")
    assert_equal("Katherine", student.name)
  end

  def test_student_cohort
    student = Student.new("Katherine", "E31")
    assert_equal("E31", student.cohort)
  end

  def test_talk
    student = Student.new("Katherine", "E31")
    assert_equal("I can talk!", student.talk)
  end

  def test_favourite_language
    student = Student.new("Katherine", "E31")
    assert_equal("I love ruby", student.say_favourite_language("ruby"))
  end

  def test_new_cohort
    student = Student.new("Katherine", "E31")
    student.set_new_cohort("E30")
    assert_equal("E30", student.cohort)
  end

  def test_new_name
    student = Student.new("Katherine", "E31")
    student.set_new_name("anothername")
    assert_equal("anothername", student.name)
  end
end
