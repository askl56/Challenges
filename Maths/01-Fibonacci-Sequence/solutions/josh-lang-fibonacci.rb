# > fib = Hash.new { |hash, key| hash[key] = key <= 2 ? key : hash[key-1] + hash[key-2] }
#  => {}
# > fib[5]
#  => 8
# > fib
#  => {2=>2, 1=>1, 3=>3, 4=>5, 5=>8}

def fib_to(n)
  fib = Hash.new { |h, k| h[k] = k <= 2 ? k : h[k - 1] + h[k - 2] }
  fib[n]
  fib.values.sort!.each { |v| puts v }
end
