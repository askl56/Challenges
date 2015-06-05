def reverse_string(string)
  str_arr = string.chars
  new_arr = []
  while !str_arr.empty?
    new_arr << str_arr.pop
  end
  new_arr.join
end
