#Удаление файла: Напишите программу, которая проверяет существование файла и, 
#если он существует, предлагает пользователю его удалить.

def file_delete
  puts 'Введите имя файла для удаления: '
  filename = gets.chomp

  return puts 'Такого файла нет!' unless File.exist?(filename)

  puts 'Вы точно хотите удалить файл? [Да/Нет]'
  choice = gets.chomp

  case choice
  when 'Да'
    File.delete(filename)
    puts 'Файл удален!'
  when 'Нет'
    puts 'Жаль...'
  else
    puts 'Упсс...похоже вы набрали что-то не то'
  end
end
