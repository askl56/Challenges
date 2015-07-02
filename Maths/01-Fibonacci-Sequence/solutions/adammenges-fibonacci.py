def fib(n):
  return reduce(lambda x, y: [x[1], x[0] + x[1]], xrange(n-2), [0, 1])[1]