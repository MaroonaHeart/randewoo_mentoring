#Напишите программу для перевода дней недели с английского на русский. 
#Monday -> понедельник итд (через if/else и сase)

def day_translation(day)
  if day == 'Monday'
    'понедельник'
  elsif day == 'Tuesday'
    'вторник'
  elsif day == 'Wednesday'
    'среда'
  elsif day == 'Thursday'
    'четверг'
  elsif day == 'Friday'
    'пятница'
  elsif day == 'Saturday'
    'суббота'
  elsif day == 'Sunday'
    'воскресенье'
  end
end

def day_translation(day)
  case day
  when 'Monday'
    'понедельник'
  when 'Tuesday'
    'вторник'
  when 'Wednesday'
    'среда'
  when 'Thursday'
    'четверг'
  when 'Friday'
    'пятница'
  when 'Saturday'
    'суббота'
  when 'Sunday'
    'воскресенье'
  else
    'такого дня нет'
  end
end

day_translation('Sunday')
