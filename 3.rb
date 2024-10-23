#Построчное чтение файла: 
#Прочитайте файл построчно и выведите на экран номер каждой строки и её содержимое.

def file_readlines(filename)
  return unless File.exist?(filename)

  file_data = File.readlines(filename)
  file_data.each.with_index(1) { |l, i| puts "#{i} #{l}" }
end
