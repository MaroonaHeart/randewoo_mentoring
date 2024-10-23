#Программа для сравнения двух строк

def match_string(str_1, str_2)
  return false if str_1.size != str_2.size
  n = 0

  while n <= str_1.size
    return false if str_1[n] != str_2[n]

    n += 1
  end
  true
end

match_string('green', 'green')
match_string('green', 'greenl')
match_string('green', 'graen')
