#Напиши программу для проверки, является ли год високосным

def leap_year?(year)
  (year % 4 == 0 && year % 100 != 0) || (year % 400 == 0)
end

leap_year(1999)
