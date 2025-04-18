# написать flatten для двухмерного массива [['a'], 'b', ['c', 'd']] -> ['a', 'b', 'c', 'd']

def my_flatten(arr)
  new_arr = []

  arr.each do |el|
    if el.is_a?(Array)
      el.each { |a| new_arr << a }
    else 
      new_arr << el
    end
  end
  new_arr
end
