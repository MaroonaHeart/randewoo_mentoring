#Напишите метод, чтобы строка (1..20).select(&5) возвращала результат [5, 10, 15, 20]

class Integer
  def to_proc
    Proc.new { |el| el % self == 0}
  end
end
