require_relative "lib/Model1.rb"
require_relative "lib/Model2.rb"
require_relative "lib/Model3.rb"
require "pry"
radiohead = Artist.new("Radiohead")
kendrick = Artist.new("Kendrick Lamar")
badbad = Artist.new("BadBadNotGood")
vince = Artist.new("Vince Staples")

rap = Genre.new("rap")
jazz = Genre.new("jazz")
rock = Genre.new("rock")

pools = Song.new(kendrick, rap, "Swimming Pools")

there = Song.new(radiohead, rock, "There There")

hedron = Song.new(badbad, jazz, "Hedron")

binding.pry
