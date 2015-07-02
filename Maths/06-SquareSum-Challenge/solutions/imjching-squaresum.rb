def squareSum(array)
  array.map { |n| n ** 2 }.reduce(:+)
end

p squareSum([1, 2, 2]) == 9