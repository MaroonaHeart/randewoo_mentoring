# написать копирование массива через индексы

def copy_arr(arr)
  clone_arr = []
  i = 0

  while i < arr.size
    clone_arr << arr[i]
    i += 1
  end

  puts "Исходный массив: #{arr}"
  puts "Копия:  #{clone_arr}"
end
