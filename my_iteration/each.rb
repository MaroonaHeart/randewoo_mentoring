def my_each1(arr)
  return unless block_given?

  i = 0
  while i < arr.size
    yield(arr[i])
    i += 1
  end
  arr
end

class Array
  def my_each2
    return unless block_given?

    i = 0
    until i == size
      yield(self[i])
      i += 1
    end
    self
  end
end

arr = [2, 3, 4, 5, 6]

my_each1(arr) { |el| puts el * 2 }

arr.my_each2 { |el| puts el * 2 }
