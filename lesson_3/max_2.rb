# Написать max_2 (находит 2 наибольших числа в массиве)

def max_2(arr)
  return nil if arr.size < 2

  i = 0
  max_num1 = max_num2 = -Float::INFINITY

  while i < arr.size
    if max_num1 < arr[i]
      max_num2 = max_num1
      max_num1 = arr[i]
    elsif max_num2 < arr[i]
      max_num2 = arr[i]
    end
    i += 1
  end
  [max_num1, max_num2]
end

max_2([1,2,9,3,6,4,5])

# Написать min_2

def min_2(arr)
  return nil if arr.size < 2

  i = 0
  min_num1 = min_num2 = Float::INFINITY

  while i < arr.size
    if min_num1 > arr[i]
      min_num2 = min_num1
      min_num1 = arr[i]
    elsif min_num2 > arr[i]
      min_num2 = arr[i]
    end
    i += 1
  end
  [min_num1, min_num2]
end
