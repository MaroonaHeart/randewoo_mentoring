class Array
  def my_include?(el)
    i = 0
    while i < size
      return true if self[i] == el
      i += 1
    end
  end
end
