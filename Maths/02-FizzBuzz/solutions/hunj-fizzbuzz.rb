def fizzbuzz(number)
  if number % 5 == 0 && number % 3 == 0
    puts 'FizzBuzz'
  elsif number % 5 == 0
    puts 'Buzz'
  elsif number % 3 == 0
    puts 'Fizz'
  else
    puts number
  end
end

(1..100).each do |n|
  fizzbuzz n
end
