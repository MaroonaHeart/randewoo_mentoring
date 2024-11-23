#На вход приходит список чисел[1, -1, 0......] (допишите сами) . 
#Программа выводит для каждой цифры "number is positeve/negative/zero" )

arr = [1, -1, 0, 3, -4, 4, 23, 0, 12, -42, 0]

def number_check(arr)
  arr.each do |a|
    if a > 0
      puts 'positive'
    elsif a < 0
      puts 'negative'
    else
      puts 'zero'
    end
  end
end
