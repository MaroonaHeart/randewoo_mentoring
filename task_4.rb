#Написать аналоги first and last для строк и для массивов

class Array
  def my_first
    self[0]
  end

  def my_last
    self[-1]
  end
end

class String
  def my_first
    arr_char = self.split(//)
    arr_char[0]
  end

  def my_last
    arr_char = self.split(//)
    arr_char[-1]
  end
end
