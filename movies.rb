# require 'test/unit'
require 'sqlite3'
require 'httparty'
require 'json'
require 'pry'



class Movie
    attr_accessor :title
    attr_accessor :year
    attr_accessor :rating
    attr_accessor :genre
    attr_accessor :director
    attr_accessor :actors
    attr_accessor :plot
    

  # Add attr_accessors for the values you want to store...

  def self.get_film_info(name)
    binding.pry
    # name = gets.chomp
    puts 'Adding "#{name}" to the database.'
    imdb_data = HTTParty.get("http://www.omdbapi.com/?t=#{name}")
    movie_info = JSON(imdb_data)
    binding.pry

    # Create a Movie object...
    new_movie = Movie.new

    # Fill in the attributes...

    # Store me in a SQLite3 database...    
  end

end

puts "Movie Directory, v0.0.2 by Ed"
print "Enter the name of a movie to adde to the database or press q to save and quit: "


while ((input = gets.strip.chomp) != 'q') do
    puts "#{input}"
    name = Movie.get_film_info(input)
    binding.pry
    puts "Movie Directory, v0.0.2 by Ed"
    print "Enter the name of a movie to adde to the database or press q to save and quit: "

end
