def psieve(ubound)
  primes = (2..ubound).to_a
  last_index = primes.length - 1
  sqrt = Math.sqrt(ubound).to_i

  (0..(primes.index(sqrt))).each do |i|
    n = primes[i]
    (i + n).step(last_index, n) { |j| primes[j] = nil } unless n.nil?
  end

  primes.compact
end
