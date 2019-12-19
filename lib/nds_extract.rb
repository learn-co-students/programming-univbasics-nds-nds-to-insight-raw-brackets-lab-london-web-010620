$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'

pp directors_database

def directors_totals(nds)
  #total = {:name => value}
  totals = {}
  #:name = directors_database[row_index][:name]
  row_index = 0
  #total_values = directors_database[row_index][:movies][element_index][:worldwide_gross]
  
 
  while row_index < directors_database.count do    #pulling the name for total{:name} 
    name = directors_database[row_index][:name]
    totals[name] = 0 
    element_index = 0 
    
    
    while element_index < directors_database[row_index][:movies].count do
      values = directors_database[row_index][:movies][element_index][:worldwide_gross]
      element_index += 1 
      #trying to get all worldwide_gross for each director added
      totals[name] += values 
      #complete trial and error ==> barely know why putting += vs >> worked! In my mind there is nowhere the worldwide_gross integer is stored prior to being added together....Ah, it loops, adds it to the totals hash, loops, and then adds next ...[element_index][:worldwide_gross] to exisiting totals hash...? 
    end
    row_index += 1 
  end
  return totals
end
  
  
  
  
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
  
