def fibonacci
  p "Enter a number and I'll compute the fibonacci sequence up to that number:"
  num_input = gets.to_i
  n1 = 0
  n2 = 1
  sum = 0
  results = []

  while sum <= num_input
    results << n1
    results << n2
    sum = n1 + n2
    results << sum
    n1 = (n2 + sum)
    n2 = (n1 + sum)
  end

  puts results.delete_if { |i| i > num_input }
end

fibonacci
