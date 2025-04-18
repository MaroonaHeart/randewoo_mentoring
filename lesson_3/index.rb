# Для строки и массива написать метод index
# index([1, 2, 3, 4, 5], 2) -> 1

def my_index(arr, num)
  i = 0
  index = nil
  while i < arr.size
    index = i if arr[i] == num
    i += 1
  end
  index
end
