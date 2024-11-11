#Сделать функцию range(num1, num2) которая по очереди выводит числа от num1 до num2. 
#Учитывайте, что числа могут быть отрицательные etc)

def my_range(num1, num2)
  if num1 < num2
    while num1 <= num2
      puts num1
      num1 += 1
    end
  else
    []
  end
end
