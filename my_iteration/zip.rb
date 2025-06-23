# написать реализацию zip/unzip. Например, на вход дается два массива,
# a1 = [1, 2, 3] 
# a2 = ['a', 'b', 'c']
# a3 = ['d', 'e', 'f', 'g']
# zip(a1, a2, a3)
# [[1, "a", "d"], [2, "b", "e"], [3, "c", "f"], [nil, nil, "g"]]
# [[1, 'a'], [2, 'b'], [3, 'c']] , если массивы разной длины, 
# то заполнение идет по более короткому, 
# недостающие элементы заполнить :empty , то есть [[1, :empty]]

def my_zip(*arr) # работает как zip/unzip
  unless arr.all? { |a| a.is_a?(Array) }
    raise ArgumentError, "Все аргументы должны быть массивами"
  end

  max_size = arr.map(&:size).max
  new_arr = []
  i = 0

  while i < max_size
    el = arr.map { |a| a[i] }
    new_arr << el
    i += 1
  end
  new_arr
end
