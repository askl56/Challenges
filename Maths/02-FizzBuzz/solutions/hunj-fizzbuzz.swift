func Fizzbuzz(number: Int) -> String {
	if number % 3 == 0 && number % 5 == 0 {
		return "FizzBuzz"
	}
	else if number % 5 == 0 {
		return "Buzz"
	}
	else if number % 3 == 0 {
		return "Fizz"
	}
	else {
		return String(number)
	}
}

for i in 1...100 {
    println( Fizzbuzz(i) )
}