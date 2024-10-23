# Копирование файла: 
# Напишите программу, которая запрашивает у пользователя два имени файлов 
# — исходный и целевой — 
# и копирует содержимое из исходного файла в целевой.

text = "Mickey Rourke\nAl Pacino\nRobert De Niro\nMichelle Pfeiffer\nMonica Bellucci\nKeanu Reeves\n"
File.write('artists.txt', text)

def file_copy
  puts 'Введите исходный файл: '
  filename_1 = gets.chomp
  puts 'Введите целевой файл: '
  filename_2 = gets.chomp
  puts '-----------------'

  if File.exist?(filename_1)
    File.write(filename_2, File.read(filename_1), mode: 'a')
    puts 'Содержимое скопированно!'
    puts File.readlines(filename_2)
  else
    puts 'Исходный файл не существует!'
  end
end
