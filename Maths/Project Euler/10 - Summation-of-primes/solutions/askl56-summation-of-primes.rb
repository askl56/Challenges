require 'prime'

puts Prime::EratosthenesGenerator.new.take_while { |n| n <= 2_000_000 }.reduce(:+)
