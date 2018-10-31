def pali(num)
  palin_num = num
  if num.to_s == num.to_s.reverse
    puts "#{num} gets palindromic after 0 steps: #{num}"
  else
    count = 0
    until palin_num.to_s == palin_num.to_s.reverse do
      palin_num += palin_num.to_s.reverse.to_i
      count += 1
    end
    puts "#{num} gets palindromic after #{count} steps: #{palin_num}"
  end
end

pali(123) #=> 123 gets palindromic after 1 steps: 444
pali(286) #=> 286 gets palindromic after 23 steps: 8813200023188
pali(196196871) #=> 196196871 gets palindromic after 45 steps: 4478555400006996000045558744
