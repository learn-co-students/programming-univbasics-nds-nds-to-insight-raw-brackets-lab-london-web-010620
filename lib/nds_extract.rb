$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'

def directors_totals(nds)
  # Remember, it's always OK to pretty print what you get *in* to make sure
  # that you know what you're starting with!
  #
  #
  # The Hash result be full of things like "Jean-Pierre Jeunet" => "222312123123"
  
  
  #
  # Use loops, variables and the accessing method, [], to loop through the NDS
  # and total up all the
  # ...
  # ...
  # ...
  #
  #
  # Be sure to return the result at the end!
  
  nil
  
  result = {
  }
  
  directors_database.length.times do |director_index|
  
    name = directors_database[director_index][:name]
  
    total = 0 
  
    movies = directors_database[director_index][:movies]
    movies.length.times do |index|
    total += movies[index][:worldwide_gross]
    end
    result[name] = total
  
  end 
  return result 
end 

 #result [directors name]= total #needs to be a string 
