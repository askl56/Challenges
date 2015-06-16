# LUMBERJACK PILE PROBLEM SOLVER (without prompts)
# ================================================

def store_logs(input)
  piles = input.split(/\s+/).map(&:to_i)
  size = piles.shift
  logs = piles.shift

  logs.times do
    e = piles.min
    i = piles.index(e)
    piles[i] += 1
  end

  puts 'UPDATED LOG STORAGE REPORT'
  if piles.count == 1 && piles == [42]
    puts 'The Answer'
  else
    piles.each_slice(size) { |s| puts s.join(' ') }
  end
end

# LUMBERJACK PILE PROBLEM SOLVER (with prompts)
# =============================================

# Get size from user
puts "\nWe pile our wood in square grids. What is the size of this grid?"
size = gets.chomp.to_i
until size > 0
  puts "\nLet's try this again: size of this grid?"
  size = gets.chomp.to_i
end

# Get current storage
row = (1..size)
col = (1..size)
grid = {}
puts %{\nWhat's our current storage situation like?\nWe're going to do this one row at a time, from top to bottom (1 to #{size}),\nand in each row, we'll go from left to right (1 to #{size} again).\n}
row.each do |r|
  col.each do |c|
    puts "\nHow many logs at (#{c},#{r})?"
    grid[[c, r]] = gets.chomp.to_i
  end
end

# Get number of logs to be stored
puts "\nAnd how many logs have we got to put into storage?"
logs = gets.chomp.to_i
until logs > 0
  puts "\nLet's try this again: how many logs?"
  logs = gets.chomp.to_i
end

# Put logs into storage
logs.times do
  v = grid.values.min
  k = grid.key(v)
  grid[k] += 1
end

# Print result
puts "\nUPDATED LOG STORAGE REPORT"
row.each do |r|
  puts col.map { |c| grid[[c, r]] }.join(' ')
end

# SOLUTIONS FOR CHALLENGE INPUTS
# ==============================

# Input 1
# 27 26 26 26
# 26 26 26 26
# 26 26 26 26
# 26 26 26 26

# Input 2
# 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20
# 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20
# 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20
# 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20
# 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20
# 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20
# 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20
# 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20
# 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20
# 20 20 20 20 20 20 20 20 20 20 20 20 20 19 19
# 19 19 19 19 19 19 19 19 19 19 19 19 19 19 19
# 19 19 19 19 19 20 19 19 19 19 19 19 19 19 19
# 19 19 19 19 20 19 19 19 19 19 19 19 19 19 19
# 19 19 19 19 19 19 20 19 19 19 19 19 19 19 19
# 19 19 19 19 19 19 19 19 20 19 19 19 19 19 19

# Input 3
# The Answer

# Input 4
# 80 80 80 80 80 80 80 80 80 80 80 80
# 80 80 80 80 80 80 80 80 80 80 80 80
# 80 80 80 80 80 80 80 80 80 80 80 80
# 80 80 80 80 80 80 80 80 80 80 80 80
# 80 80 80 80 80 80 80 80 80 80 80 80
# 80 80 80 80 80 80 80 80 80 80 80 80
# 80 80 80 80 80 80 80 80 80 80 80 80
# 80 80 80 80 80 80 80 80 80 80 80 80
# 80 80 80 80 80 80 80 80 80 80 80 80
# 80 80 79 79 79 79 79 79 79 79 79 79
# 79 79 79 79 79 79 79 79 79 79 79 79
# 79 79 79 79 79 79 79 79 79 79 79 79
