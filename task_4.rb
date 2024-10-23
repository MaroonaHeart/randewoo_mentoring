#Написать аналоги first and last для строк и для массивов

def my_first_el(arr)
  arr[0]
end

def my_last_el(arr)
  arr[-1]
end

def my_first_char(str)
  str[0]
end

def my_last_char(str)
  str[-1]
end

arr = [5, 32, 9, 'lol']
str = 'Crimea'

my_first_el(arr)
my_last_el(arr)

my_first_char(str)
my_last_char(str)
