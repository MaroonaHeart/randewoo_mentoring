# написать find для массива
# возвращает все найденные элементы

def find_arr(arr, el)
  new_arr = []

  arr.each do |item|
    new_arr << item if item == el
  end
  new_arr
end
