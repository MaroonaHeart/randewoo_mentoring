#Программа для сравнения двух строк

def match_string(str_1, str_2)
  return false if str_1.size != str_2.size

  arr_char_1 = str_1.split(//)
  arr_char_2 = str_2.split(//)

  n = 0

  while n <= str_1.size
    return false if arr_char_1[n] != arr_char_2[n]

    n += 1
  end
  true
end
