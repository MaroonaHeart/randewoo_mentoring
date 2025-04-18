# написать пересечение для двух массивов (на выходе должен быть массив, 
# который содержит элементы, которые есть и в первом и во втором массиве)

def intersection_arr(arr1, arr2)
  arr1.map do |el|
    el if arr2.include?(el)
  end.compact
end

intersection_arr(['a', 'b', 'c', 'd'], ['a', 'b']) -> ['a', 'b']
