def mult_tab(rows, cols)
  ary = []

  # Calculate
  (1..rows).each do |row|
    (1..cols).each do |col|
      ary << row * col
    end
  end

  # Print nice table
  max_dig = ary.max.to_s.size

  ary.each_slice(cols) do |sli|
    slice = sli.map do |pro|
      pro_dig = pro.to_s.size
      offset = ' ' * (max_dig - pro_dig)
      pro = offset + pro.to_s
    end

    puts slice.join(' ')
  end

  # Return array
  ary.uniq!
end
