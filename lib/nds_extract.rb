$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'

def directors_totals(nds)

  pp nds
  result = {
  }
  puts nds.length
  
  nds.length.times do |index|
    #puts nds[index].length
    result[nds[index][:name]] = 0
    puts "MOVIES BY #{nds[index][:name]}"
    
    nds[index][:movies].length.times do |movies_index|
      puts nds[index][:movies][movies_index][:worldwide_gross]
      result[nds[index][:name]] += nds[index][:movies][movies_index][:worldwide_gross]
    end
    
    puts "\n\n"
  end
  result
end
