@fibonacci = [nil, 1, 1] # prevents 0th fibonacci

def fibonacci(number)
  return 1 if number == 1 || number == 2
  return @fibonacci[number] if @fibonacci[number]
  @fibonacci[number] = fibonacci(number - 1) + fibonacci(number - 2)
  @fibonacci[number]
end

fibonacci(100)

p @fibonacci
