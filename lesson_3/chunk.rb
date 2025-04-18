# Написать сhunk, делит массив на чанки определенной длины (по 3 элемент итд) - размер чанка можно задавать

def my_chunk(arr, num)
  i = 0
  new_arr = []

  while i < arr.size
    new_arr = arr[i..i+num-1]
    p new_arr
    i += num
  end
end

my_chunk([3, 1, 4, 1, 5, 9], 2)
# [3, 1]
# [4, 1]
# [5, 9]
