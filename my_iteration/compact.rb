def my_compact(arr)
  new_arr = []
  i = 0
  while i < arr.size
    new_arr << arr[i] if arr[i] != nil
    i += 1
  end
  new_arr
end

arr = [4, 6, 7, nil, 12, nil, nil, 8]
my_compact(arr)
