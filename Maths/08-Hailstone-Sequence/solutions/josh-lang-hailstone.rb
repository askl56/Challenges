# Routine to count the chain for a number
def hotpo(num)
  n = num
  chn = 1

  until n == 1
    n = 3 * n + 1 if n.odd?
    n /= 2 if n.even?
    chn += 1
  end

  { number: num, chain: chn }
end

# Solve for 27
# > hotpo(27)
#  => {:number=>27, :chain=>71}
twenty_seven = hotpo(27)

# Solve for the number less than 100,000 which has the longest chain
longest = { number: 0, chain: 0 }

(3...1e5).select(&:odd?).each do |num|
  current = hotpo(num)

  if current[:chain] > longest[:chain]
    longest[:number] = num
    longest[:chain] = current[:chain]
  end
end

p twenty_seven
p longest
