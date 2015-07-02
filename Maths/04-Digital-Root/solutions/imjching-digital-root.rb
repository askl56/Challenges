def digital_root(number)
  return number if number < 10
  digital_root(number.to_s.split(//).map(&:to_i).reduce(:+))
end

p digital_root(65536) == 7