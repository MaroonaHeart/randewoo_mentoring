#Вывести таблицу умножения для числа 3 (while, until, for c in range, each)

n = 1

while n < 10
  puts "#{n} x 3 = #{n * 3}"
  n += 1
end

until n == 10
  puts "#{n} x 3 = #{n * 3}"
  n += 1
end

for n in 1..9 do
  puts "#{n} x 3 = #{n * 3}"
end

(1..9).each do |n|
  puts "#{n} x 3 = #{n * 3}"
end
