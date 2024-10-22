#Вывести числа от 1 до 10 (все делать через while, until, for c in range, each)

n = 1

while n <= 10
  puts n
  n+= 1
end

until n > 10
  puts n
  n+= 1
end

for n in 1..10 do
  puts n
end

(1..10).each do |n|
  puts n
end
