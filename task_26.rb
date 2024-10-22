#Написать итератор по 3 элемента для массива и строк

# class Array
#   def iterator_three_el
#     a = 0
#     until a == size
#       yield (self[a])
#       a += 3
#     end
#     self
#   end
# end

# class String
#   def iterator_three_el
#     medium = self.size / 2
#     medium.times do |a|
#       self[a], self[-a-1] = self[-a-1], self[a]
#     end
#     self
#   end
# end