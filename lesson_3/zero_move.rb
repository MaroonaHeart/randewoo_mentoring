# Write a program to move all zeroes to the end of a given array.
# The given array is : [2, 5, 7, 0, 4, 0, 7, -5, 8, 0]
# The new array is:
#  2 5 7 4 7 -5 8 0 0 0

def zero_move(arr)
  num_arr = []
  zeroes_arr = []

  arr.each do |el|
    if el.zero?
      zeroes_arr << el
    else
      num_arr << el
    end
  end

  num_arr.concat(zeroes_arr)
end

zero_move([2, 5, 7, 0, 4, 0, 7, -5, 8, 0])
