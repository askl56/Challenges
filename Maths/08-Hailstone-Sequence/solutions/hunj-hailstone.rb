class Fixnum
  def hailstone
    arr = []
    n = self
    arr << n
    while n != 1
      if n.even?
        arr << n / 2
        n /= 2
      else
        arr << (3 * n + 1)
        n = 3 * n + 1
      end
    end
    arr
  end
end

sequences = {}
number = 0
max = 0

(1...1e5).each do |num|
  sequences[num] = num.hailstone.size

  if sequences[num] > max
    number = num
    max = sequences[num]
  end
end

p number # => 77031
p sequences[number] # => 351
