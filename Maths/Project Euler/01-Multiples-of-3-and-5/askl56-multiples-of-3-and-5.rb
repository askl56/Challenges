# Long version

def multiples
  numbers = Array(1..999)
  multiples = Array.new
  for i in numbers
    if i%3 == 0 or i%5 == 0
      multiples.push(i)
    end
  end
  multiples
end

# Shorter Version

def multiples
  (1..999).select do |i|
    i % 3 == 0 || i % 5 == 0
  end
end
