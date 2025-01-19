#Написать итератор по 3 элемента для массива и строк

def each_three(arr)
  i = 0
  while i < arr.size
    yield(arr[i..i+2])
    i += 3
  end
  arr
end

arr = [3, 4, 6, 12, 34, 7, 5]
str = 'А я прощаюсь с городом просоленным, куда в любое время не доходят поезда'

each_three(arr) { |el| puts el }
