def fizzbuzz
  (1..100).each do |i|
    fizz = i % 3 == 0
    buzz = i % 5 == 0
    result = ""

    result << "Fizz" if fizz
    result << "Buzz" if buzz
    result << i.to_s if result.empty?

    puts result
  end
end

fizzbuzz