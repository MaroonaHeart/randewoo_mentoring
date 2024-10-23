#Построчное чтение файла: 
#Прочитайте файл построчно и выведите на экран номер каждой строки и её содержимое.

def file_readlines(filename)
  return unless File.exist?(filename)

  file_data = File.readlines(filename)

  i = 0

  while i < file_data.size
    puts "#{i + 1} #{file_data[i]}"
    i += 1
  end
end
