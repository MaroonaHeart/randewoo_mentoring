#Сделать программу, которая выводит

# 1
# 1 2
# 1 2 3
# 1 2 3 4
# 1 2 3 4 5

def numbers_ladder(num)
  q = 1
  arr = [q]
  while q <= num
    puts arr.join(' ')
    q += 1
    arr << q
  end
end
