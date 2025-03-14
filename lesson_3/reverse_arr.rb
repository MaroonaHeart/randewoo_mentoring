# Написать reverse для массива

def reverse_arr(arr)
  i = arr.size - 1
  new_arr = []

  while i >= 0
    new_arr << arr[i]
    i -= 1
  end
  new_arr
end