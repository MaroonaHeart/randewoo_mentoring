# Реверс содержимого файла: Программа должна прочитать файл, развернуть его содержимое 
# (переставить символы или строки в обратном порядке) и записать в новый файл.

def file_revers
  puts 'Введите исходный файл: '
  file_source = gets.chomp

  puts 'Введите новый файл: '
  file_duplicate = gets.chomp

  return puts 'Такого файла нет!' unless File.exist?(file_source)

  file_data = File.readlines(file_source)
  file_data.each do |l|
    File.write(file_duplicate, my_revers(l), mode: 'a')
  end

  puts 'Содержимое повёрнуто в обратную сторону!'
end

def my_revers(str)
  medium = str.size / 2
  ch = 0

  while ch < medium
    str[ch], str[-ch-1] = str[-ch-1], str[ch]
    ch += 1
  end
  str
end
