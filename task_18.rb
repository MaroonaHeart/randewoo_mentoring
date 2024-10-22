#Написать аналог reverse для строк

class String
  def my_revers
    medium = self.size / 2
    ch = 0

    while ch < medium
      self[ch], self[-ch-1] = self[-ch-1], self[ch]
      ch += 1
    end
    self
  end
end
