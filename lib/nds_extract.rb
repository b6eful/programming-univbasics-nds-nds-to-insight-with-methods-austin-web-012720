$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'

def gross_for_director(director_data)
  movie_num = 0
  length = = director_data[:movies].length
  growth= 0
  while movie_num < length do
    growth += director_data[:movies][movie_num][:worldwide_gross]
    movie_num += 1
  end
  return growth
end

def directors_totals(nds)
  results = {}
  director_len = 0
  while director_len < nds.length
    director_name = nds [director_len][:name]
    results[director_name] = gross_for_director(nds[director_len])
    director_len +=
  end
  return results
end
