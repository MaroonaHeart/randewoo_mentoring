#Прочитать файл и вывести его содержимое: 
#Напишите программу, которая запрашивает у пользователя имя файла и выводит его содержимое на экран.

def file_read
  puts 'Введите имя файла для чтения: '
  filename = gets.chomp

  return puts 'Такого файла нет!' unless File.exist?(filename)

  puts File.read(filename)
end
