fn main() {
    for i in 1..101 {
        match (num % 3 == 0, num % 5 == 0) {
            (true, true)   => println!("FizzBuzz"),
            (true, false)  => println!("Fizz"),
            (false, true)  => println!("Buzz"),
            (false, false) => println!("{}", i),
        }
    }
}
