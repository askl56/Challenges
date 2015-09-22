def reverse_string(string)
  solution = []
  string.chars.each do |i|
    solution.unshift(i)
  end
  solution.join
end
