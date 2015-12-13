require "prime"

def nprime(n)
  (Prime.first n).last
end

puts nprime(10001)
