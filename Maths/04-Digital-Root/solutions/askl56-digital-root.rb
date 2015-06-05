class Numeric
  def digital_root
    if self < 10 then
      self
    else
      to_s.split("").map { |i| i.to_i }.inject(:+).digital_root
    end
  end
end

num = 1234

puts num.digital_root

puts num


puts 1234.digital_root
puts 12345678.digital_root
