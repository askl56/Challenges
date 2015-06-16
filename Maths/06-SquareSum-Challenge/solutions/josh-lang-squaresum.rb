def square_sum(*nums)
  nums.flatten.map{|n| n**2}.reduce(:+)
end
