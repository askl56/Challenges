def dottie_num(input)
  iterations = 0
  last_num = 0
  changed_num = input
  while (changed_num - last_num).abs > 0.0001
    last_num = changed_num
    changed_num = Math.cos(changed_num)
    iterations += 1
  end

  return [changed_num, iterations]
end
