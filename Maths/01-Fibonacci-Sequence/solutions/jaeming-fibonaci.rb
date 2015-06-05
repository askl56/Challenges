def fibonaci
  p "Enter a number and I'll compute the fibonaci sequence up to that number:"
  num = gets.to_i

  n1 = 0
  n2 = 1
  sum = 0

  while sum <= num
    print_sequence_num(n1, num)
    print_sequence_num(n2, num)
    sum = n1 + n2
    print_sequence_num(sum, num)
    n1 = (n2 + sum)
    n2 = (n1 + sum)
  end
end

def print_sequence_num(result, num)
  puts result unless (result >= num)
end

fibonaci
