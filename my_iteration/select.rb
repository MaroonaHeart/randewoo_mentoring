def my_select(arr)
  result = arr.my_map { |el| el if yield(el) }
  my_compact(result)
end

arr = [2, 3, 4, 5, 6]
my_select(arr) { |el| el % 2 == 0 }
