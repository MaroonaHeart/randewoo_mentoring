# написать сложение 2 массивов
# по алгоритму - сначала создается третий массив нужной длины и поэлементно заполняется
# [a, b, c] + [d, e, a] = [a, b, c, d, e, a]

def sum_two_arr(arr1, arr2)
  new_arr = []
  i = 0
  j = 0
  k = 0

  while k < (arr1.size + arr2.size)
    if i < arr1.size
      new_arr << arr1[i]
      i += 1
    elsif j < arr2.size
      new_arr << arr2[j]
      j += 1
    end
    k += 1
  end
  new_arr
end

sum_two_arr(['a', 'b', 'c'], ['d', 'e', 'a'])
