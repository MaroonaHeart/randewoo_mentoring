def my_each(arr)
  i = 0
  while i < arr.size
    yield(arr[i])
    i += 1
  end
  arr
end
#############################
class Array
  def my_each
    i = 0
    until i == size
      yield(self[i])
      i += 1
    end
    self
  end
end

arr = [2, 3, 4, 5, 6]

my_each(arr) { |el| puts el * 2 }

arr.my_each { |el| puts el * 2 }
