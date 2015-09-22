# Long version

def multiples
  numbers = Array(1..999)
  multiples = []
  for i in numbers
    multiples.push(i) if i % 3 == 0 || i % 5 == 0
  end
  multiples
end

# Shorter Version

def multiples
  (1..999).select do |i|
    i % 3 == 0 || i % 5 == 0
  end
end
