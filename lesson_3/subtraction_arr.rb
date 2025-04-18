# написать вычитание массивов друг из друга
# [a, b, c, d, e, a ] - [a, b] = [c, d, e, a]

def subtraction_arr(arr1, arr2)
  new_arr = arr1
  j = 0

  while j < arr2.size
    flag = false
    i = 0

    while i < arr1.size
      if arr1[i] == arr2[j] && flag == false
        new_arr.delete_at(i)
        flag = true
      end
      i += 1
    end
    j += 1
  end
  new_arr
end

subtraction_arr(['a', 'b', 'c', 'd', 'e', 'a'], ['a', 'b'])
# => ["c", "d", "e", "a"]
