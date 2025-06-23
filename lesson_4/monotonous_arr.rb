def monotonous?(arr)
  return true if arr.size <= 2

  increasing = true
  decreasing = true

  i = 0

  while i < arr.size - 1
    if arr[i] > arr[i + 1]
      increasing = false
    elsif arr[i] < arr[i + 1]
      decreasing = false
    end
    i += 1
  end

  increasing || decreasing
end

monotonous?([1, 2, 3, 4])     # => true (возрастающий)
monotonous?([4, 3, 2, 1])     # => true (убывающий)
monotonous?([1, 2, 2, 3])     # => true (неубывающий)
monotonous?([1, 3, 2])        # => false (не монотонный)
