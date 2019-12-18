$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'
require 'pp'
require 'pry'

def directors_totals(nds)
  total_hash = {}
  name_index = 0
  while name_index < nds.length do
    gross_index = 0
    while gross_index < nds[name_index][:movies].length do
     if total_hash[nds[name_index][:name]]
       total_hash[nds[name_index][:name]] += nds[name_index][:movies][gross_index][:worldwide_gross]
     else
       total_hash[nds[name_index][:name]] = nds[name_index][:movies][gross_index][:worldwide_gross]
     end
    gross_index += 1
end
name_index +=1
end
return total_hash
end
