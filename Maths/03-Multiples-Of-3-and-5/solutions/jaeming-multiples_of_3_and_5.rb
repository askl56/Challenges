def multiples_of_3_and_5
  solution = []
  sum = 0
  (1..999).each do |i|
    solution << i if i % 3 == 0
    solution << i if i % 5 == 0
  end

  solution.each { |i| sum += i }
  sum
end
