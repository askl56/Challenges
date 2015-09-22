def digital_root(n)
  digits = n.abs.to_s.split('')

  until digits.length == 1
    n = eval(digits.join('+'))
    digits = n.to_s.split('')
  end

  n
end
