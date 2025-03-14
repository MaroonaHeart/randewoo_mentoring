# Написать map на примере мультипликатора map(arr, multiply) 
# map([1, 2, 3], 2) -> [2, 4, 6]

def map_multiply(arr, multiply)
  new_arr = []
  i = 0
  while i < arr.size
    return if arr[i].nil?

    new_arr << arr[i] * multiply
    i += 1
  end
  new_arr
end

map_multiply([1, 2, 4, 5], 3)
