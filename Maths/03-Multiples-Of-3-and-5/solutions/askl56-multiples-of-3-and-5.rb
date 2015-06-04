def multiples
  (1..999).select do |i|
    i % 3 == 0 || i % 5 == 0
  end
end
