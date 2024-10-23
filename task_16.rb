#Написать fizz/buzz

# Если число делится на 3, вместо него надо сказать «Fizz».
# Если число делится на 5, вместо него надо сказать «Buzz».
# А если число делится одновременно на 3 и на 5, то надо вместо него сказать «FizzBuzz».

def fizz_buzz(num)
  (1..num).each do |n|
    if n % 3 == 0 && n % 5 == 0
      puts 'FizzBuzz'
    elsif n % 5 == 0
      puts 'Buzz'
    elsif n % 3 == 0
      puts 'Fizz'
    else
      puts n
    end
  end
end

fizz_buzz(15)
