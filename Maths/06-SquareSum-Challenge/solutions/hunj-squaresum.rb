def square_sum(arr)
  sum = 0
  arr.each do |number|
    sum += number**2
  end
  sum
end

p square_sum([1, 2, 2]) # => 9
