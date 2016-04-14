def pythagorean_triples
  (1..Float::INFINITY).lazy.flat_map {|z|
    (1..z).flat_map {|x|
      (x..z).select {|y|
        x**2 + y**2 == z**2
      }.map {|y|
        [x, y, z]
      }
    }
  }
end

p pythagorean_triples.take_while { |*, z| z < 426 }.force

# puts x

# results = x.map{|x| x.inject(:+)}
# puts results
