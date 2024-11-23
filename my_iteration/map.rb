def my_map(arr)
  new_arr = []
  i = 0
  while i < arr.size
    new_arr << yield(arr[i])
    i += 1
  end
  new_arr
end
#############################
class Array
  def my_map
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

my_map(arr) { |el| el * 2 }

arr.my_map { |el| el * 2 }
