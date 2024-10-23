# Добавление данных в файл: Программа должна позволять пользователю ввести текст и 
# добавлять его в конец файла, не удаляя предыдущие данные.

def file_write
  puts 'Введите сообщение: '
  message = gets.chomp

  puts 'Введите имя файла: '
  filename = gets.chomp

  return puts 'Такого файла нет!' unless File.exist?(filename)

  File.write(filename, message, mode: 'a')
  puts 'Сообщение добавлено!'
end
