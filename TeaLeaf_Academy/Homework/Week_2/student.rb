class Student
  attr_accessor :name, :grade

  def initialize(name, grade)
    @name = name
    @grade = grade
  end

  def better_grade_than?(different_student)
    grade > different_student.grade
  end

  protected

  def grade
    @grade
  end

end

# Create a class 'Student' with attributes name and grade. Do NOT make the grade getter public,
# so joe.grade will raise an error. Create a better_grade_than? method, that you can call like so...

#puts "Well done!" if joe.better_grade_than?(bob)
#- See more at: http://www.gotealeaf.com/books/ruby/read/inheritance#sthash.yWBZLEju.dpuf

patrick = Student.new("Patrick", 94)
joe = Student.new("Joe", 93)
if !joe.better_grade_than?(patrick)
  puts "Most Excellent"
else
  puts "Too bad. :("
end
