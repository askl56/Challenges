a = 0 # first fibonnaci number
b = 1 # second fibonnaci number
c = 0 # current fibonnaci number

sumevens = 0 # sum of even fibonnaci numbers less than 4,000,000

while c <= 4_000_000
  c = a + b
  a = b
  b = c
  sumevens += c if c.even?
end

puts sumevens
