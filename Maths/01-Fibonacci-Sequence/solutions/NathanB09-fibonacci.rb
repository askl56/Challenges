#Calculates the fibonacci sequence up to the closest number entered

def fibonacci(num)
  seq = [0, 1]
  until seq.any? { |i| i >= num }
    seq << seq[seq.length - 1] + seq[seq.length - 2]
  end
  puts seq
end

fibonacci(30)
