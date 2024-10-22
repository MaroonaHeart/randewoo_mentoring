#Вывести числа от 1 до 10 (все делать через while, until, for c in range, each)

def leap_year(year)
  d = year.to_s.split(//)
  if d[-1] == '0' && d[-1-1] == '0'
    year % 100 == 0 && year % 400 == 0
  else
    year % 4 == 0
  end
end
