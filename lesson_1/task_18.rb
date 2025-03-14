#Написать аналог reverse для строк

def reverse_str(str)
  i = str.size - 1
  new_str = []

  while i >= 0
    new_str << str[i]
    i -= 1
  end
  new_str.join('')
end
