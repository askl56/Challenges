def multiples_of_3_and_5(n)
  (1...n).select{|i| i % 3 == 0 || i % 5 == 0}.inject(:+)
end
