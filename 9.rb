#сделать игру камень, ножницы, бумага 

def games
  choices = %w[камень ножницы бумага]
  i = 3
  puts "У вас #{i} попытки"

  while i > 0
    puts 'Выберите и введите камень/ножницы/бумага:'

    my_choice = gets.chomp.downcase

    program_choice = choices.sample
    puts "Ход программы: #{program_choice}"

    if my_choice == program_choice
      puts 'Ничья!'
    elsif (my_choice == 'бумага' && program_choice == 'ножницы') ||
          (my_choice == 'камень' && program_choice == 'бумага') ||
          (my_choice == 'ножницы' && program_choice == 'камень')
      puts 'Вы проиграли!'
    else
      puts 'Вы выиграли!'
    end
    i -= 1
  end
end
