# написать реализацию zip. Например, на вход дается два массива,
# a = [1, 2, 3] 
# b = ['a', 'b', 'c']
# zip(a, b)
# [[1, 'a'], [2, 'b'], [3, 'c']] , если массивы разной длины, 
# то заполнение идет по более короткому, 
# недостающие элементы заполнить :empty , то есть [[1, :empty]]

def my_zip(arr1, arr2)
  new_arr = []
  arr_size = if arr1.size > arr2.size
               arr1.size
             else
               arr2.size
             end
  i = 0
  while i < arr_size
    new_arr << [arr1[i], arr2[i]]
    i += 1 
  end
  new_arr
end
