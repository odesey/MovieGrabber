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
    puts 'Adding "#{name}" to the database.'
    imdb_data = HTTParty.get("http://www.omdbapi.com/?t=#{name}")
    movie_info = JSON(imdb_data)
    binding.pry

    # Create a Movie object...
    db = SQLite3::Database.new("movies.db")
    new_movie = Movie.new

def self.all
    people = []
    # binding.pry
    results = @@db.execute("select * from people")
    # binding.pry

    results.each do |i| row
      newguy = Person.create_person(i[1])
      newguy.id = i[0]
      newguy.type = i[1]
      newguy.name = i[2]
      newguy.email = i[3]
binding.pry
      newguy << people
      

      sql = "insert into people (name, age, height, star_sign, married) values (?, ?, ?, ?, ?)"
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
