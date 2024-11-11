#Вывести таблицу умножения для числа 3 (while, until, for c in range, each)

n = 1
arr = [1, 2, 3, 4, 5, 6, 7, 8, 9]

while n < 10
  puts "#{n} x 3 = #{n * 3}"
  n += 1
end

until n == 10
  puts "#{n} x 3 = #{n * 3}"
  n += 1
end

for n in arr do
  puts "#{n} x 3 = #{n * 3}"
end

arr.each do |n|
  puts "#{n} x 3 = #{n * 3}"
end
