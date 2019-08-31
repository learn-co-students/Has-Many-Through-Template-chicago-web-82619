#class for Model2 goes here
#Feel free to change the name of the class
class Student
    attr_reader :name, :age, :mood
    attr_writer :mood, :age

    @@all = []

    def self.all
        @@all
    end

    def initialize(name, age)
        @name = name
        @age = age
        @mood = "sad"
        @@all << self
    end

    def new_classroom(name, teacher)
        Classroom.new(name, teacher, self)
    end

    def schedule
        sched = Classroom.all.select {|classroom| classroom.student == self}
        # puts sched.collect {|classroom| classroom.name}
    end

    def mood_check
        #if any teacher of student's classoom has tenure, student's mood changes to happy
        # if self.age > 70
        if self.schedule.find {|classroom| classroom.teacher.tenure == "yes"}
        # if self.schedule.collect {|classroom| classroom.teacher.tenure == "bored"}
            self.mood = "happy"
        end

    end


end
