# Write a program to find the missing number from a given array. There are no duplicates in list. Go to the editor
# The given array is : 1 3 4 2 5 6 9 8
# The missing number is : 7

def missing_number(arr)
  n = arr.size + 1  # Поскольку одно число пропущено
  expected_sum = (n * (n + 1)) / 2  # Формула суммы от 1 до n
  actual_sum = arr.sum  # Сумма элементов в массиве

  missing_number = expected_sum - actual_sum

  puts "The given array is : #{arr.join(' ') }"
  puts "The missing number is: #{missing_number}"
end

missing_number([1, 3, 4, 2, 5, 6, 9, 8]) -> 
# The given array is : 1 3 4 2 5 6 9 8
# The missing number is : 7
