#Найти средний элемент в строке (если строка имеет нечетную длину). 
#Если строка имеет четную длину, то брать более левый элемент (первый из двух средних)

class String
  def my_revers
    str_size = self.size
    medium = str_size / 2

    if str_size.odd?
      self[medium]
    else
      self[medium - 1]
    end
  end
end
