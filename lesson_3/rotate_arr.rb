# Write a program to rotate an array by N positions.
# The given array is : 0 3 6 9 12 14 18 20 22 25 27
# From 4th position the values of the array are : 12 14 18 20 22 25 27
# Before 4th position the values of the array are : 0 3 6 9
# After rotating from 4th position the array is:
# 12 14 18 20 22 25 27 0 3 6 9

def rotate_arr(arr, position)
  return if arr.size <= 1

  arr[position..-1] + arr[0...position]
end

rotate_arr([1, 2, 3, 4, 5, 6, 7, 8, 9, 10], 4) -> [5, 6, 7, 8, 9, 10, 1, 2, 3, 4]
