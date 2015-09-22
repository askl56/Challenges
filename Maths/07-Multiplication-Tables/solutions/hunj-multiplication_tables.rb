def multiplication_tables(row, col)
  table = []
  (1..row).each do |row_count|
    table[row_count] = []
    (1..col).each do |col_count|
      table[row_count].push(row_count * col_count)
    end
  end
  table
end

p multiplication_tables(2, 3) # => [nil, [1, 2, 3], [2, 4, 6]]
