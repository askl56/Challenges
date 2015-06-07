n = gets.to_i
logs = gets.to_i

piles = Array.new(n) { gets.split.map &:to_i }.flatten

logs.times { piles[piles.index(piles.min)] += 1 }

piles.each_slice(n) { |row| puts row.join ' ' }
