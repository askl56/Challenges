def reverse_string(string)
  str_arr = string.chars
  new_arr = []
  new_arr << str_arr.pop until str_arr.empty?
  new_arr.join
end
