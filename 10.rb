#cделать собственную программу заметок по дням. Функционал:

# cоздать заметку create
# удалить заметку delete
# показать заметку show
# редактировать заметку update

NOTES_LIST_PATH = 'notes.txt'
BUFFER = 'buffer.txt'

def show(text)
  file_data = File.readlines(NOTES_LIST_PATH)

  i = 0

  while i < file_data.size
    note = file_data[i] if file_data[i].chomp == text
    i += 1
  end

  if note
    puts note
  else
    puts 'Заметка не найдена'
  end
end

def update(id, text)
  file = File.open(BUFFER, 'w')
  file_data = File.readlines(NOTES_LIST_PATH)

  i = 0

  while i < file_data.size
    file.puts(id == i ? text : file_data[i])
    i += 1
  end

  file.close
  File.write(NOTES_LIST_PATH, File.read(BUFFER))
  File.delete(BUFFER) if File.exist?(BUFFER)
end
