#написать бомбочку , вводишь число , она выводит обратный отсчет. 
#Перед цифрой 3 выводит предупреждение, что скоро взрыв, когда доходит до нуля - "Boom"

def bomb(num)
  i = 0
  while num >= i
    puts 'Скоро взрыв' if num == 3
    puts num
    puts 'Boom' if num == 0
    num -= 1
  end
end
