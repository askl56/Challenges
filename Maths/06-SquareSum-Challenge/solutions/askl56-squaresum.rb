def squareSum(numbers)
  numbers.map { |n| n * n }.reduce(:+)
end
