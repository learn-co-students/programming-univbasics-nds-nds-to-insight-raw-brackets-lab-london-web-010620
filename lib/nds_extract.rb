$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'

def directors_totals(nds)
total_gross = {}
row_index = 0 

  while row_index < directors_database.length do
    director_name = directors_database[row_index][:name]
    total_gross[director_name] = 0 
    column_index = 0 
    while column_index < directors_database[row_index][:movies].length do 
      total_gross[director_name]+= directors_database[row_index][:movies][column_index][:worldwide_gross]
      column_index += 1 
    end 
    row_index += 1 
  end 
  total_gross
end
   



