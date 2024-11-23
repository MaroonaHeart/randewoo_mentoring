#написать игру 'Камень, ножницы, бумага'

ACTION = %w[paper scissors stone]

def get_user_choice
  puts 'Select: paper, stone or scissors'
  choice = gets.chomp.downcase
  until ACTION.include?(choice)
    puts 'Please enter the correct value (paper/stone/scissors)'
    choice = gets.chomp.downcase
  end
  choice
end

def get_computer_choice
  ACTION.sample
end

def determine_score(user_choice, computer_choice, user_count, computer_count)
  if user_choice == computer_choice
    user_count += 0
  elsif (user_choice == 'paper' && computer_choice == 'scissors') ||
        (user_choice == 'stone' && computer_choice == 'paper') ||
        (user_choice == 'scissors' && computer_choice == 'stone')
    computer_count += 1
  else
    user_count += 1
  end

  puts "Your score #{user_count}:#{computer_count}"
  [user_count, computer_count]
end

def total(user_count, computer_count)
  if user_count == computer_count
    puts 'Draw!'
  elsif user_count < computer_count
    puts 'The computer won!'
  else
    puts 'You won!'
  end
end

def good_game
  puts 'Have a good game, and may luck always be with you!'

  loop do
    i = 1
    computer_count = 0
    user_count = 0

    while i <= 3
      user_choice = get_user_choice
      computer_choice = get_computer_choice

      puts "You've chosen: #{user_choice}"
      puts "The computer has chosen: #{computer_choice}"

      user_count, computer_count = determine_score(user_choice, computer_choice, user_count, computer_count)
      total(user_count, computer_count) if i == 3

      i += 1
    end

    puts 'Would you like to play again? (yes/no)'
    break if gets.chomp.downcase != 'yes'
  end

  puts 'Thanks for the game!'
end

good_game
