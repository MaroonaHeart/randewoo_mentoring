#Написать итератор по 3 элемента для массива и строк

def iterator_three_el(arr_str)
  a = 0
  until a > arr.size - 1
    yield ([arr[a], arr[a+1], arr[a+2]].join(' '))
    a += 3
  end
  arr
end

arr = [3, 4, 6, 12, 34, 7, 5]
str = 'А я прощаюсь с городом просоленным, куда в любое время не доходят поезда'

iterator_three_el(arr) {|el| puts "#{el} iteration"}
