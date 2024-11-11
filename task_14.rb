#Вводим число от 1 до 9. Программа выводит пирамиду нужной длины из цифр.

def pyramid_numbers(num)
  return if num == 0 || num > 9

  (1..num).each do |i|
    puts ' ' * (num - i) + (1..i).to_a.join(' ')
  end
end

pyramid_numbers(8)
