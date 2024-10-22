#На вход приходит список с разными словами ["apple", "banana", "age"......]
#Программа выводит все слова с введенной буквы

arr = ["apple", "banana", "age", "orange", "foo", "rock and roll", "green", "michelle", "krd", "art"]

def dictionary(char)
  arr.select do |w|
    w[0] == char
  end
end
