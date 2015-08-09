# Non recursive

def palindrome?(s)
  s == s.reverse
end

# Recursive

def r_palindrome?(s)
  if s.length <= 1
    true
  elsif s[0] != s[-1]
    false
  else
    r_palindrome?(s[1..-2])
  end
end

# Recursive is much slower.

str = "A man, a plan, a caret, [...2110 chars deleted...] a canal--Panama.".downcase.delete('^a-z')
puts palindrome?(str)    # => true
puts r_palindrome?(str)  # => true

require 'benchmark'
Benchmark.bm do |b|
  b.report('iterative') {10000.times {palindrome?(str)}}
  b.report('recursive') {10000.times {r_palindrome?(str)}}
end

# Output:

true
true
               user     system      total        real
iterative  0.062000   0.000000   0.062000 (  0.055000)
recursive 16.516000   0.000000  16.516000 ( 16.562000)
