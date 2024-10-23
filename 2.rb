#Записать текст в файл: Напишите программу, которая запрашивает у пользователя текст и имя файла, 
#а затем записывает этот текст в указанный файл.

def file_write
  puts 'Введите содержимое для файла: '
  text = gets.chomp
  puts 'Введите имя файла: '
  filename = gets.chomp
  puts '------------------'

  if File.exist?(filename)
    File.write(filename, text, mode: 'a')
    puts 'Содержимое записано!'
  else
    puts 'Такого файла нет!'
  end
end
