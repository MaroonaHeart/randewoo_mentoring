# Вывести шахматную доску в консоль (можно использовать cимволы вместо черного и белого)

def chessboard
  black = '🟦'
  white = '🟪'
  
  pattern_one = ("#{white}#{black}") * 4
  pattern_two = ("#{black}#{white}") * 4

  puts "    A B C D E F G H"
  puts "   ————————————————"

  i = 8
  while i > 0
    if i % 2 == 0
      puts "#{i} |#{pattern_one}| #{i}"
    else
      puts "#{i} |#{pattern_two}| #{i}"
    end
    i -= 1
  end
  puts "   ————————————————"
  puts "    A B C D E F G H"
end
