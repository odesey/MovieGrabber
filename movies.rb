class Movie

  # Add attr_accessors for the values you want to store...

  def self.get_film_info(name)    
    imdb_data = HTTParty.get("http://www.omdbapi.com/?t=#{name}")
    movie_info = JSON(imdb_data)
    binding.pry

    # Create a Movie object...
    m = Movie.new

    # Fill in the attributes...

    # Store me in a SQLite3 database...    
  end

end

puts "Movie Directory, v0.0.2 by Ed"
print "Enter the name of a movie to adde to the database or press q to save and quit: "

# mname = ""
while ((input = gets.strip.chomp) != 'q') do

    input = Movie.new
 end
