class Student

  def initialize(name, cohort)
    @name = name
    @cohort = cohort
  end

  def get_student_name()
    return @name
  end

  def get_student_cohort()
    return @cohort
  end

  def set_student_name(name)
    @name = name
  end

  def set_student_cohort(cohort)
    @cohort = cohort
  end

  def get_student_to_talk()
    return "I can talk!"
  end

  def say_favourite_language(favourite_language)
    return "I love #{favourite_language}"
  end

end
