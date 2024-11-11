#Загадай число. Комп загадывает число от 1 до 100. 
# У вас три попытки. Комп ждем ваши вариант, если угадал - игра заканчивается. 
# Комп говорит больше / меньше

def games
  i = 1
  magic_number = rand(100)

  while i <= 3
    puts 'Введите загаданное число:'
    number = gets.to_i

    if number == magic_number
      'Вы угадали!'
    elsif number > magic_number
      puts 'Число должно быть меньше!'
    else
      puts 'Число должно быть больше!'
    end
    i += 1
  end
  puts "Число, которое загадал комп #{magic_number}"
end
