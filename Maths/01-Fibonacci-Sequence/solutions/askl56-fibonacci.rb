def fib(n, cache)
  return 1 if n <= 2
  return cache[n] if cache[n]
  cache[n] = fib(n - 1, cache) + fib(n - 2, cache)
end

cache = {}
p (1..100).map { |i| fib(i, cache) }

# Recursive with memoization

fib = Hash.new do |f, n|
  f[n] = if n <= -2
           (-1)**(n + 1) * f[n.abs]
         elsif n <= 1
           n.abs
         else
           f[n - 1] + f[n - 2]
         end
end
