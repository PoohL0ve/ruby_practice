class Student
    def initialize(name, grade)
        @name = name
        @grade = grade
    end
    # Method checks for greater than and returns true
    def better_grade?(someone)
        grade > someone.grade 
    end
    protected
    def grade
        @grade 
    end
end

jen = Student.new("Jennifer", 92)
clark = Student.new("Clark", 90)
puts jen.better_grade?(clark)

# expected error to occur
puts jen.grade 