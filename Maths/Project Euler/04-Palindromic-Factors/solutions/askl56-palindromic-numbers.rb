# Euler 4
# http://projecteuler.net/index.php?section=problems&id=4
# Find the largest palindrome made from the product of
# two 3-digit numbers. A palindromic number reads the
# same both ways. The largest palindrome made from the
# product of two 2-digit numbers is 9009 = 91 x 99.
# Find the largest palindrome made from the product of
# two 3-digit numbers.

timer_start = Time.now

def is_palindrome?(n)
  n.to_s == n.to_s.reverse
end

max = 0
100.upto(999) do |i|
  i.upto(999) do |j|
    p = i * j

    max = p if is_palindrome?(p) && p > max
  end
end

puts max # 906609
puts "Elapsed Time: #{(Time.now - timer_start) * 1000} milliseconds"
