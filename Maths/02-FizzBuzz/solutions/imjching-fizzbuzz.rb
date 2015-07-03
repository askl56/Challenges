(1..100).each do |n|
  s = ""
  s << "Fizz" if n % 3 == 0
  s << "Buzz" if n % 5 == 0
  s << n.to_s if s.empty?
  puts s
end