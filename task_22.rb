#На вход дается массив чисел, написать метод sum, который считает сумму всех чисел

arr = [3, 7, 5, 2, 9]

def sum(arr)
  summ = 0
  arr.each do |a|
    summ += a
  end
  summ
end
