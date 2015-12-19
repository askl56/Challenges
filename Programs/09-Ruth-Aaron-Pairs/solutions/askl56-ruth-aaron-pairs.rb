require 'prime'

# returns all factors (no repetition) for 1 number
def factors(num)
  pn = num.prime_division
  ans = []
  pn.each_index do |i|
    ans << pn[i][0]
  end
  ans
end

# takes two numbers and returns t/f if they are RA_pairs
def RA_pairs?(p)
  num1 = factors(p[0])
  num2 = factors(p[1])
  a = (num1 - (num1 & num2)).inject(:+)
  b = (num2 - (num1 & num2)).inject(:+)
  a == b ? (return true) : (return false)
end

# prints valid or not valid.
def ruth_aaron(nums)
  print "(#{nums[0]}, #{nums[1]}): "
  print 'NOT ' unless RA_pairs?(nums)
  print "VALID.\n"
end
