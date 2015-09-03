def sum_of_squares(upto)
  a = 0
  (1..upto).each { |x| a += x**2 }
  a
end

def square_of_sum(upto)
  a = 0
  (1..upto).each { |x| a += x }
  a**2
end

puts square_of_sum(100) - sum_of_squares(100)
