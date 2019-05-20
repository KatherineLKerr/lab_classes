class Student

  def initialize(student_name, student_cohort)
    @name = student_name
    @cohort = student_cohort
  end

  def name
    return @name
  end

  def cohort
    return @cohort
  end

  def set_new_name(new_name)
    @name = new_name
  end

  def set_new_cohort(new_cohort)
    @cohort = new_cohort
  end

  def talk
    return "I can talk!"
  end

  def say_favourite_language(language)
    return "I love #{language}"
  end

end
