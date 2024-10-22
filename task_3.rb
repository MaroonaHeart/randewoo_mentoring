#Берется массив цифр , выводится по очереди строка, где написано "element -> index". 
#Такое же для строки

arr = [3, 5, 9, 34]

# arr.each_with_index do |el, i|
#   puts "#{el} -> #{i}"
# end

def element_index(arr)
  i = 0
  while i < arr.size
    puts "#{arr[i]} -> #{i}"
    i += 1
  end
end
