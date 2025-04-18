# написать метод split , он делит массив на несколько массивов по нужному элементу. 
# Если split(arr, "") - то по каждому элементу

def split_arr(arr, pattern)
  result_arr = []
  current_arr = []

  arr.each do |el|
    if el == pattern
      result_arr << current_arr unless current_arr.empty?
      current_arr = []
    elsif pattern == ""
      result_arr << [el]
    else
      current_arr << el
    end
  end

  result_arr << current_arr unless current_arr.empty?
  result_arr
end

split_arr([1,2,3,4,6,7,45], 4) -> [[1,2,3], [6,7,45]]
split_arr([1,2,3,4,6,7,45], "")
