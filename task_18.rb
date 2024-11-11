#Написать аналог reverse для строк

def my_revers(str)
  medium = str.size / 2
  ch = 0

  while ch < medium
    str[ch], str[-ch-1] = str[-ch-1], str[ch]
    ch += 1
  end
  str
end
