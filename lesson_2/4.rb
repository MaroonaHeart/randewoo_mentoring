# Копирование файла: 
# Напишите программу, которая запрашивает у пользователя два имени файлов 
# — исходный и целевой — 
# и копирует содержимое из исходного файла в целевой.

text = "Mickey Rourke\nAl Pacino\nRobert De Niro\nMichelle Pfeiffer\nMonica Bellucci\nKeanu Reeves\n"
File.write('artists.txt', text)

def file_copy
  puts 'Введите исходный файл: '
  file_source = gets.chomp

  puts 'Введите целевой файл: '
  file_duplicate = gets.chomp

  return puts 'Такого файла нет!' unless File.exist?(filename)

  file_data = File.readlines(file_source)
  file_data.each do |l|
    File.write(file_duplicate, l, mode: 'a')
  end

  puts 'Содержимое скопированно!'
end
