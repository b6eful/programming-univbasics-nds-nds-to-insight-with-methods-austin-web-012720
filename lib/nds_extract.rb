$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'

# Find a way to accumulate the :worldwide_grosses and return that Integer
# using director_data as input
def gross_for_director(director_data)
  num_movies = 0
  total = 0
  while num_movies < director_data [:movies].length do
    total += director_data[:movies][num_movies][:worldwide_grosses]
    num_movies += 1
  end
  total
end

def directors_totals(nds)
  result = {}
  nil
end
