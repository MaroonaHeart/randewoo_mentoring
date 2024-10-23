#Напишите программу для перевода названия месяца в цифру . May -> 5 итд (через if/else и сase)

def month_number(month)
  if month == 'January'
    1
  elsif month == 'February'
    2
  elsif month == 'March'
    3
  elsif month == 'April'
    4
  elsif month == 'May'
    5
  elsif month == 'June'
    6
  elsif month == 'July'
    7
  elsif month == 'August'
    8
  elsif month == 'September'
    9
  elsif month == 'October'
    10
  elsif month == 'November'
    11
  elsif month == 'December'
    12
  else
    'такого месяца нет'
  end
end

def month_number(month)
  case month
  when 'January'
    1
  when 'February'
    2
  when 'March'
    3
  when 'April'
    4
  when 'May'
    5
  when 'June'
    6
  when 'July'
    7
  when 'August'
    8
  when 'September'
    9
  when 'October'
    10
  when 'November'
    11
  when 'December'
    12
  else
    'такого месяца нет'
  end
end

month_number('September')
