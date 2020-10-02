#Finds the sum of all multiples of 3 or 5 below 1000

def sum_multiple
  sum = 0
  (1...1000).each { |i| i % 3 == 0 || i % 5 == 0 ? sum += i : sum }
  puts sum
end

sum_multiple #=> 233168
