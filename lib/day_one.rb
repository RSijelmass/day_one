def adds_one(array)
  array.map {|x| x+1}
end

def sort_array(array)
  array.sort
end

def sort_add(array)
  adds_one(sort_array(array))
end

def sum_array(array)
  sum = 0
  array.each{ |x| sum += x}
  sum
end

def sum_twice(array)
  sum_array(array)*2
end

def adds_one_hash(hash)
  hash.map{ |key,value| [key, value + 1]}.to_h
end

def sort_hash(hash)
  arr = []
  keys = hash.keys;   values = hash.values.sort
  for i in 0...keys.length
    arr[i] = [keys[i], values[i]]
  end
  arr.to_h
end

def sort_values(hash)
  hash.values.sort
end
