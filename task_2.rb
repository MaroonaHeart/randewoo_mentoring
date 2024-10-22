#На вход дается строка, например, "Hello" . 
#Программа по очереди выводит каждую букву в верхнем регистре. 
#Второй вариант в нижнем регистре

def upcase_srting(str)
  arr_char = str.split(//)
  arr_char.each do |c|
    puts c.upcase
  end
end

def downcase_srting(str)
  arr_char = str.split(//)
  arr_char.each do |c|
    puts c.downcase
  end
end
