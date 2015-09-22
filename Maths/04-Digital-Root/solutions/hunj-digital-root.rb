class Fixnum
  def digital_root
    sum = 0
    digits = to_s.split('')

    digits.each do |digit|
      sum += digit.to_i
    end

    if sum / 10 == 0
      return sum
    else
      sum.digital_root
    end
  end
end

p 65_536.digital_root # => 7
