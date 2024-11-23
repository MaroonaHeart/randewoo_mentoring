# Меню работы с файлами: Создайте консольную программу с меню, которая позволяет:

# Прочитать файл.
# Добавить строку в файл.
# Вывести количество строк и символов в файле.
# Выйти из программы.

loop do
  puts 'Меню:'
  puts '1. Прочитать файл'
  puts '2. Добавить строку в файл'
  puts '3. Вывести количество строк и символов в файле'
  puts '4. Выйти из программы'
  print 'Выберите действие: '

  choice = gets.chomp

  case choice
  when '1'
    file_read
  when '2'
    file_write
  when '3'
    puts 'Введите имя файла: '
    filename = gets.chomp

    break puts 'Такого файла нет!' unless File.exist?(filename)

    file_data = File.readlines(filename)
    sum_char = 0

    file_data.each do |l|
      l = l.chomp
      sum_char += l.size
    end

    puts "Количество строк в файле: #{file_data.size}"
    puts "Количество символов в файле: #{sum_char}"
  when '4'
    break puts 'Хорошего дня!'
  else
    break puts 'Упссс...действие неверное'
  end
end
