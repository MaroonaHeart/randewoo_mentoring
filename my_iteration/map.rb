def my_map1(arr)
  return unless block_given?

  new_arr = []
  i = 0
  while i < arr.size
    new_arr << yield(arr[i])
    i += 1
  end
  new_arr
end

class Array
  def my_map2
    return unless block_given?

    new_arr = []
    i = 0
    until i == size
      new_arr << yield(self[i])
      i += 1
    end
    new_arr
  end
end

arr = [2, 3, 4, 5, 6]

my_map1(arr) { |el| el * 2 }

arr.my_map2 { |el| el * 2 }
