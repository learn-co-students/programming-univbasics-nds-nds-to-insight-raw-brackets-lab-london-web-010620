$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'

def directors_totals(nds)
  result = {
  }
  directors_index = 0
  while directors_index < nds.length do
    directors_name = nds[directors_index][:name]
    total_grossed = 0
    film_index = 0 
    films = nds[directors_index][:movies]
    while film_index < films.length do
      total_grossed += films[film_index][:worldwide_gross]
      film_index += 1
    end
    result[directors_name] = total_grossed
    directors_index += 1
  end
  result
end
