#написать калькулятор , принимает три значения (a, b, operator) operator +/-/*/% . 
#Он должен сгенерить выражение и он должен вывести результат.

def calculator(a, b, operator)
  case operator
  when  '+'
    puts "#{a} + #{b} = #{a + b}"
  when  '-'
    puts "#{a} - #{b} = #{a - b}"
  when  '*'
    puts "#{a} * #{b} = #{a * b}"
  when  '/'
    puts "#{a} / #{b} = #{a / b}"
  end
end
