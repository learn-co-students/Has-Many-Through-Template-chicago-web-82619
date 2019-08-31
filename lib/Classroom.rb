require 'pry'

#class for Model3 goes here
#Feel free to change the name of the class
class Classroom
    attr_accessor :name, :teacher, :student

    @@all = []

    def self.all
        @@all
    end

    def initialize(name, teacher, student)
        @name = name
        @teacher = teacher
        @student = student
        @@all << self
    end


    # binding.pry
  
end
