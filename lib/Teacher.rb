#class for Model1 goes here
#Feel free to change the name of the class
class Teacher
    attr_accessor :name, :field, :years_teaching, :tenure

    @@all = []

    def self.all
        @@all
    end

    def initialize(name, field)
        @name = name
        @field = field
        @years_teaching = 5
        @tenure = "no"
        @@all << self
    end

    def classrooms
        Classroom.all.select {|classroom| classroom.teacher == self}
    end

    def roster
        self.classrooms.collect {|classroom| classroom.student.name}
    end

    def create_student(name)
        Student.new(name)
    end

    def has_tenure?
        if self.tenure == "no" && self.years_teaching >= 3
            self.tenure = "yes"
        end
    end
end
