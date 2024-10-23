#На вход дается строка, нужно поменять в ней первую и последнюю букву

def revers_char(str)
  return str if str.size == 0 || str.size == 1

  str[0], str[-1] = str[-1], str[0]
  str
end

revers_char('unloved')
