# Movies Homework

We're going to make a little program that grabs information about films and store it in the database.

# Install

1. Fork this repo, and git clone your own copy as normal.
2. Install the following gems:
```gem install httparty```
```gem install json```
3. Run the test using 
```ruby test/test.rb```

You should get a binding.pry prompt with film information for "Jaws". We're going to extend this program to make a database.

# TODO

* Open the test/test.db database using sqlite 3:

```sqlite3 test/test.db```

* Create a table called movies that stores some of the data that you are interested in.
* Update the Movie class, so that it has attr_accessors for each column in the movies table.
* Finish the get_film_info method, so that it takes information out of the movie_info hash and stores it in the database.
* Update your test, so that you can make sure that the movie is stored correctly.
* If you get this far, try the following extensions:
  * How could we make our program grab more than one movie?
  * How could we change our database design to store actors in a seperate table? What other information is not in 3NF?
  * Add a method to print all the movies in the database
  * Add a method to search for all the movies in the database.
  * Amend the program any way you see fit.
* When you're done, send me a pull request