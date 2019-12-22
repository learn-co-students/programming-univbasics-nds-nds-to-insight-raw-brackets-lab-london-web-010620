$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'
require'pp'
require 'pry'

  # Remember, it's always OK to pretty print what you get *in* to make sure
  # that you know what you're starting with!
  #
  #
  # The Hash result be full of things like "Jean-Pierre Jeunet" => "222312123123"
  # Write a method that, given an NDS creates a new Hash
  # The return value should be like:
  #
  #  { directorOne => allTheMoneyTheyMade, ... }

def directors_totals(nds)
  result = {}
  director_index= 0 
    while director_index < nds.size do
      curent_director = nds[director_index][:name]
      result[curent_director] = gross_income(nds[director_index])
      director_index += 1
    end
  result
end


def gross_income(director_movies)
  movie_index = 0 
  movie = director_movies[:movies]
  total_gross = 0
    while movie_index < movie.size do
     total_gross += movie[movie_index][:worldwide_gross]
     movie_index+=1
    end
  total_gross
end
