#написать камень/ножницы/бумагу

def games
  puts 'Ход первого игрока:'
  action_1 = gets.chomp
  puts 'Ход второго игрока:'
  action_2 = gets.chomp

  if action_1 == action_2
    puts 'Ничья!'
  elsif (action_1 == 'бумага' && action_2 == 'ножницы') ||
        (action_1 == 'камень' && action_2 == 'бумага') ||
        (action_1 == 'ножницы' && action_2 == 'камень')
    puts 'Выиграл второй игрок!'
  else
    puts 'Выиграл первый игрок!'
  end
end
