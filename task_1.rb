#Вывести числа от 1 до 10 (все делать через while, until, for c in range, each)

n = 1
arr = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

while n <= 10
  puts n
  n += 1
end

until n > 10
  puts n
  n += 1
end

for n in arr do
  puts n
end

arr.each do |n|
  puts n
end
