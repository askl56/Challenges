bottles = 99

until bottles == 0
  puts "#{bottles} bottle#{bottles == 1 ? "" : "s"} of beer on the wall"
  puts "#{bottles} bottle#{bottles == 1 ? "" : "s"} of beer"
  puts "Take one down, pass it around"
  puts "#{bottles - 1} bottle#{bottles == 2 ? "" : "s"} of beer on the wall"
  bottles -= 1
end
