# Написать аналоги start_with? end_with? для строк

class String
  def my_start_with?(prefix)
    i = 0
    bool = false

    while i < prefix.size
      bool = true if self[0..i] == prefix
      i +=1
    end 
    bool
  end

  def my_end_with?(suffix)
    suf_size = suffix.size - 1 
    str_size = size - 1
    bool = false

    while suf_size >= 0 && str_size >= 0
      bool = true if self[str_size..-1] == suffix
      str_size -=1
      suf_size -=1
    end 
    bool
  end
end

"hello".my_start_with?("hel")

"hello".my_end_with?("ello")
"hello".my_end_with?("lo")
