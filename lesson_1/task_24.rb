#Дается массив из цифр [1, 2, 3, 1, 1, 1, 2, 2, 4, 5, 6, 5, 5] - найти наибольшую последовательность из цифр без прерывания. 
#То есть, здесь будет три "1"

def max_sequence(arr)
  max_sequence = []
  current_sequence = []

  arr.each do |el|
    if current_sequence.empty? || current_sequence.last == el
      current_sequence << el
    else
      max_sequence = current_sequence if current_sequence.size > max_sequence.size
      current_sequence = [el]
    end
  end
  max_sequence
end
