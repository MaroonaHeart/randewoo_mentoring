#Вводим число от 1 до 9. Программа выводит пирамиду нужной длины из звездочек.

def pyramid_stars(num)
  return if num == 0 || num > 9

  (1..num).each do |i|
    puts ' ' * (num - i) + '* ' * i
  end
end

pyramid_stars(8)
