#Написать полную пирамиду из чисел и звездочек

def pyramid_numbers_stars(num)
  puts "#{' ' * (num - 1)} *"

  (1..num).each do |i|
    puts "#{' ' * (num - i)}#{(1..i).to_a.join(' ')} *"
  end
end

pyramid_numbers_stars(8)
