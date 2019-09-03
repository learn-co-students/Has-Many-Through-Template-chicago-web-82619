require_relative "lib/artist.rb"
require_relative "lib/song.rb"
require_relative "lib/genre.rb"
require 'pry'


jayz = Artist.new("Jay-Z")
kendrick = Artist.new("Kendrick Lamar")
rap = Genre.new('rap')
blues = Genre.new('blues')
rock = Genre.new('rock')
folk = Genre.new('folk')
probs = Song.new("99 Problems", jayz, rap)
shrimp = Song.new("Big Shrimpin", jayz, rap)

binding.pry
puts "done"