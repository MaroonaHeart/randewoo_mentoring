# Написать для массива метод count
# count([1, 2, 3, 4, 1], 1) -> 2

def my_count(arr, num)
  i = 0
  count = 0
  while i < arr.size
    count += 1 if arr[i] == num
    i += 1
  end
  count
end
