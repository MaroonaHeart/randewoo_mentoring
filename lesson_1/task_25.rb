#Дается строка, найти наибольшую последовательность из букв без прерывания.

def max_sequence_letters(str)
  max_sequence = []
  current_sequence = []

  str.each_char do |el|
    if current_sequence.empty? || current_sequence.last == el
      current_sequence << el
    else
      max_sequence = current_sequence if current_sequence.size > max_sequence.size
      current_sequence = [el]
    end
  end
  max_sequence.join
end
