#На вход дается строка, например, "Hello" . 
#Программа по очереди выводит каждую букву в верхнем регистре. 
#Второй вариант в нижнем регистре

def upcase_srting(str)
  s = 0
  while s < str.size
    puts str[s].upcase
    s += 1
  end
end

def downcase_srting(str)
  s = 0
  while s < str.size
    puts str[s].downcase
    s += 1
  end
end

upcase_srting('ШоСсе в ниКудА')
downcase_srting('OXXXYMIRON')
