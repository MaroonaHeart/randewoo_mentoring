def sum_arr(*arrs)
  min_size = arrs.map(&:size).min
  new_arr = []
  i = 0

  while i < min_size
    el = arrs.sum { |a| a[i] }
    new_arr << el
    i += 1
 end
 new_arr
end

 sum_arr([1,2,3], [1,2,3,4])
