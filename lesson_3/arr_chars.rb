# Написать для строки метод chars (создает из строки массив букв)

def arr_chars(str)
  new_arr = []
  i = 0

  while i < str.size
    new_arr << str[i]
    i += 1
  end
  new_arr
end

arr_chars('multiply')
