#Берется массив цифр , выводится по очереди строка, где написано "element -> index". 
#Такое же для строки

def element_index(arr)
  i = 0
  while i < arr.size
    puts "#{arr[i]} -> #{i}"
    i += 1
  end
end

arr = [3, 5, 9, 34]
element_index(arr)
