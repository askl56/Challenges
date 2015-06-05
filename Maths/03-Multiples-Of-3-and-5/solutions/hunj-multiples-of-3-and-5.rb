class Fixnum
  def is_multiple_of? number
    self % number == 0
  end
end

sum = 0

(1..1000).each do |num|
  sum += num if num.is_multiple_of? 3 or num.is_multiple_of? 5
end

p sum # => 234168