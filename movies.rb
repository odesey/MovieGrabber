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

    def self.open_database(name)
      @@db = SQLite3::Database.new(movies.db)
    end

    def self.close_database
      @@db.close
    end

    # def get_film_info(name)
    #     movie_info = []
    #     puts "Adding #{name} to the database."
    #     imdb_data = HTTParty.get("http://www.omdbapi.com/?t=#{name}")
    #     movie_info = JSON(imdb_data)
    #     @new_movie = movie_info
    #     # return movie_info
    #     binding.pry
    # end
  
    def self.create_movies
      i = Movies.create_movies
        x = @new_movie
        Movie.title = x[0]
        binding.pry
        newguy.type = i[1]
        newguy.name = i[2]
        newguy.email = i[3]
    end

    # create_movies
    # # accessor method
    # def movie_name
    #   @mname = name
    # end

    # # setter methods
    # def set_movie_name=(value)
    #   @mname = value
    # end

    # Person.all
    # people = []

    # results = @@db.execute("select * from people")
    # results.each do |r|
    # p = Person.create_person(r[1])
    # p.id, p.type, p.name = r[0..3]
    # people << p


    # def save
    #   sql = "insert name, age, genre(?,?,?,?)"
    #   @@db = (sql, self.name, self.age, self.genre)
    # end

  # Add attr_accessors for the values you want to store...

  # def self.get_film_info(name)
  #   puts "Adding #{name} to the database."
  #   imdb_data = HTTParty.get("http://www.omdbapi.com/?t=#{name}")
  #   @movie_info = JSON(imdb_data)
  #   return @movie_info
  #   binding.pry
  # end
    
    # @@db = SQLite3::Database.new("movies.db")

   # def self.parse_movie
   #  movie_result = []
   #  movie_resule = @movie_info
   #  # new_movie = Movie.new
   #  @movie_info << new_movie
   #  binding.pry
   # end
    # binding.pry

    # results.each do |i| row
    #   newguy = Person.create_person(i[1])
    #   newguy.id = i[0]
    #   newguy.type = i[1]
    #   newguy.name = i[2]
    #   newguy.email = i[3]
# binding.pry
#       newguy << people
      

      # sql = "insert into people (name, age, height, star_sign, married) values (?, ?, ?, ?, ?)"
    # Fill in the attributes...

    # Store me in a SQLite3 database...    
  # end

end

puts "Movie Directory, v0.0.2 by Ed"
print "Enter the name of a movie to adde to the database or press q to save and quit: "

@new_movie = ""

def get_film_info(name)
    movie_info = []
    puts "Adding #{name} to the database."
    imdb_data = HTTParty.get("http://www.omdbapi.com/?t=#{name}")
    movie_info = JSON(imdb_data)
    @new_movie = movie_info.to_a
    # return movie_info
    binding.pry
 end

while ((input = gets.strip.chomp) != 'q') do
    puts "#{input}"
    
    # @new_movie = []
    # some_movie = Movie.new
    get_film_info(input)
    binding.pry
    puts "Movie Directory, v0.0.2 by Ed"
    print "Enter the name of a movie to adde to the database or press q to save and quit: "
end
