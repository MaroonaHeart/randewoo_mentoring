#На вход дается строка, нужно поменять в ней первую и последнюю букву

def revers_char(str)
  str = str.split(//)
  str[0], str[-1] = str[-1], str[0]
  str.join
end
