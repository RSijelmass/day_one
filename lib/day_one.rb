def adds_one(array)
  array.map {|x| x+1}
end

def sort_array(array)
  array.sort
end

def sort_add(array)
  adds_one(sort_array(array))
end
