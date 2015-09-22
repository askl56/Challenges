@fib = [0, 1, 1]
def fibonacci_recursive(n)
  @fib[n] ||= fibonacci_recursive(n - 1) + fibonacci_recursive(n - 2)
end

print 'Enter a number: '
number = gets.chomp.to_i
p fibonacci_recursive(number)
