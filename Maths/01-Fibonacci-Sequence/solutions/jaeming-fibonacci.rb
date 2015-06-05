def fibonacci
  p "Enter a number and I'll compute the fibonacci sequence up to that number:"
  num_input = gets.to_i
  n1 = 0
  n2 = 1
  sum = 0
  ary = []

  while below_input?(sum, num_input)
    ary << n1 if below_input?(n1, num_input)
    ary << n2 if below_input?(n2, num_input)
    sum = n1 + n2
    ary << sum if below_input?(sum, num_input)
    n1 = (n2 + sum)
    n2 = (n1 + sum)
  end
  puts ary
end

def below_input?(num, num_input)
  num <= num_input
end

fibonacci
