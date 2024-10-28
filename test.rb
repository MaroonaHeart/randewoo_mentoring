BUFFER = 'buffer.txt'

def joirnal
  puts '***************'
  puts 'Школьный журнал'
  puts '***************'

  file_data = File.readlines('classes.txt')
  classes_size = file_data.size

  puts file_data
  puts "#{classes_size + 1}. Добавить"
  puts "#{classes_size + 2}. Редактировать"

  print 'Выберите действие: '
  num = gets.chomp.to_i

  if num == classes_size + 1
    add_value('classes.txt')
    joirnal
  elsif num == classes_size + 2
    print 'Введите номер класса: '
    class_num = gets.chomp.to_i
    print 'Введите новое значение: '
    new_class_num = "#{class_num}. #{gets}"

    update_value(class_num, new_class_num, 'classes.txt')
    joirnal
  else
    puts show_pupil(num, arr = [])
    print 'Выберите действие: '

    my_choice = gets.chomp.to_i
    case my_choice
    when arr.size + 1 #добавляем
      puts add_value('pupil.txt', 'pupil', num)
    when arr.size + 2 #редактируем
      print 'Введите номер ученика: '
      pupil_num = gets.chomp.to_i
      print 'Введите новое значение: '
      new_pupil_name = "#{pupil_num}. #{gets}"

      update(pupil_num, new_pupil_name, 'pupil.txt')
    when arr.size + 3 #назад
      joirnal
    else
      file_subjects = File.readlines('subjects.txt')
      subjects_size = file_subjects.size
      puts file_subjects
      puts "#{subjects_size + 1}. Добавить"
      puts "#{subjects_size + 2}. Редактировать"
      puts "#{subjects_size + 3}. Назад"

      print 'Выберите действие: '
      subject_num = gets.chomp.to_i

      if subject_num == subjects_size + 1
        add_value('subjects.txt')
      elsif subject_num == subjects_size + 2
        print 'Введите номер предмета: '
        subject_num = gets.chomp.to_i
        print 'Введите новое значение: '
        new_subject_num = "#{subject_num}. #{gets}"

        update_value(subject_num, new_subject_num, 'subjects.txt')
      elsif subject_num == subjects_size + 3
        #назад
      else
        marks = File.read('marks.txt').split("\n")

        pupil_marks = ''

        marks.each do |l|
          pupil_id = l.split("|")[0].to_i
          subject_id = l.split("|")[1].to_i
          next if (my_choice != pupil_id) && (subject_num != subject_id)

          pupil_marks = l.split("|")[2]
        end
        puts pupil_marks.gsub(/,/, "\n")
      end
    end
  end
end

def add_value(filename, type = nil, num = nil)
  print 'Введите значение: '
  file = File.read(filename).split("\n")
  id = file.size + 1
  value = "#{id}. #{gets}"
  File.write(filename, value, mode: 'a')

  if type == 'pupil'
    classes_pupil = "#{num}|#{id}\n"
    File.write('classes_pupil.txt', classes_pupil, mode: 'a')
  end

  puts 'Значение добавлено!'
end

def update_value(id, text, filename)
  file = File.open(BUFFER, 'w')
  file_data = File.readlines(filename)
  index = id - 1

  i = 0

  while i < file_data.size
    file.puts(index == i ? text : file_data[i])
    i += 1
  end

  file.close
  File.write(filename, File.read(BUFFER))
  File.delete(BUFFER) if File.exist?(BUFFER)

  puts 'Значение сохранено!'
end

def show_pupil(num, arr)
  classes_pupil = File.read('classes_pupil.txt').split("\n")

  classes_pupil.each do |line|
    class_id = line.split("|")[0].to_i
    next if num != class_id

    pupil_id = line.split("|")[1].to_i
    pupil_file = File.read('pupil.txt').split("\n")
    pupil_file.each do |str|
      list_id = str.split(".")[0].to_i
      next if pupil_id != list_id

      arr << str
    end
  end

  arr_size = arr.size

  puts arr
  puts "#{arr_size + 1}. Добавить"
  puts "#{arr_size + 2}. Редактировать"
  puts "#{arr_size + 3}. Назад"
end
