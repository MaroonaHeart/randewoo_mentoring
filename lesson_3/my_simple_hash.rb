# используя массивы реализуйте программу, которая работает аналогично Hash
# можно добавлять ключ/значение
# можно удалять ключ значение
# вывести все ключи
# вывести все значения
# если ключи одинаковы - перезаписывается

class SimpleHash
  def initialize
    @keys = []
    @values = []
  end

  def add(k, v)
    i = @keys.index(k)

    if i
      @values[i] = v
    else
      @keys << k
      @values << v
    end
  end

  def delete(k)
    i = @keys.index(k)
  
    if i 
      @keys.delete_at(i)
      @values.delete_at(i)
    else
      puts "Ключ '#{k}' не найден."
    end
  end

  def keys
     @keys
  end

  def values
    @values
  end
end

 h = SimpleHash.new # @keys=[], @values=[]
 h.add(1, 'limony') # @keys=[1] @values=['limony']
 h.add('baz', 2)
 h.add('foo', 6)
 h.add('bat', 3)
 h.delete(1)
 