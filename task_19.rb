#Написать программу для поиска палиндромов

str = 'Do geese see God'

def palindromes(str)
  string = str.downcase.gsub(/\s+/, '')
  string == my_revers(string)
end
