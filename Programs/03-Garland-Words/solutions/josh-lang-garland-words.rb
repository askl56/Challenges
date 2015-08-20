def degree(str)
  (str.size / 2).downto(1).each do |d|
    return d if str.split('').shift(d) == str.split('').pop(d)
  end
  0
end

def chain(str)
  d = degree(str)
  d == 0 ? 'Not a garland word...' : (str[0, d] + (str[d..-1] * 10))
end

require 'open-uri'

uri = URI.parse('https://dotnetperls-controls.googlecode.com/files/enable1.txt')
uri.open do |f|
  greatest = { degree: 0, word: nil }
  f.each_line do |l|
    w = l.chomp
    d = degree(w)
    greatest.merge!(degree: d, word: w) if d > greatest[:degree]
  end
  puts "#{greatest[:degree]}: #{chain(greatest[:word])}"
end
