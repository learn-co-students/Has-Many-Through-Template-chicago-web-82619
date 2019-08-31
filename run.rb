require './lib/Teacher.rb'
require './lib/Student.rb'
require './lib/Classroom.rb'
require 'pry'

mae = Student.new('mae', 30)
brian = Student.new('brian', 33)
brenda = Student.new('brenda', 32)
brody = Student.new('brody', 1)

aaron = Teacher.new('aaron', 'english')
alton = Teacher.new('alton', 'science')
lyons = Teacher.new('lyons', 'esl, art')

Classroom.new("Eng10", aaron, mae)
Classroom.new('Esl', lyons, brian)
Classroom.new('Science', alton, brenda)
Classroom.new('Esl', lyons, brody)


binding.pry

true