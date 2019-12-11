$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'

def directors_totals(nds)
  director_index = 0 
  gross_totals = {}
  
  while director_index < directors_database.length do
     director_name = directors_database[director_index][:name]
     movie = directors_database[director_index][:movies]
     gross_totals[director_name] = 0
     movie_index = 0 

    while movie_index < movie.length do
      gross_totals[director_name]+= movie[movie_index][:worldwide_gross]
      movie_index += 1
    end
    director_index += 1 
  end
  gross_totals
end 



