def my_uniq1(arr)
  arr.my_map { |value| [value, value] }.to_h.keys
end

def my_uniq2(arr)
  result = []
  arr.each do |el|
    result << el unless result.my_include?(el)
  end
  result
end

arr = [2, 3, 4, 5, 6, 6, 4, 4, 1]
my_uniq1(arr)
