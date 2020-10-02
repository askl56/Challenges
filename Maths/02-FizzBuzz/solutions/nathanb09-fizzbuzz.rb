#Prints "Fizz" for multiples of 3, "Buzz" for multiples of 5, and "FizzBuzz"
#for multiples of 3 and 5.

def fizzbuzz(num)
  if num % 3 == 0 && num % 5 == 0
    puts "FizzBuzz"
  elsif num % 3 == 0
    puts "Fizz"
  elsif num % 5 == 0
    puts "Buzz"
  end
end

fizzbuzz(15) #=> "FizzBuzz"
fizzbuzz(9)  #=> "Fizz"
fizzbuzz(20) #=> "Buzz"
