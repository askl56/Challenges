@index = 0
@primes = [2]
output = @primes.first

class Fixnum
  def prime?
    return true if self <= 3
    return false if self.even? || self % 3 == 0
    i = 5
    until i**2 > self
      return false if self % i == 0 || self % (i + 2) == 0
      i += 6
    end
    true
  end
end

def add_prime
  num = @primes.last + 1
  num += 1 until num.prime?
  @primes << num
end

def out(i)
  unless i < 0
    output = @primes[i]
    puts "=> #{output}"
  else
    if rand(2) == 0
      puts 'Woah, now'
      @index = 0
    else
      puts 'NO!'
      @index = 0
    end
  end
end

puts %(
I'll keep listing prime numbers as long as you type 'n' or 'p'
'n' for next, 'p' for previous
Just type 'q' if you want to quit

>> first_prime
=> #{output}
)

loop do
  print "\n>> "
  input = gets.chomp
  if input == 'n' || input == 'next'
    @index += 1
    add_prime
    out(@index)
  elsif input == 'p' || input == 'prev' || input == 'previous'
    @index -= 1
    out(@index)
  elsif input == 'q' || input == 'quit'
    puts 'quitting'
    break
  elsif input == 'first' || input == 'first_prime'
    puts '=> 2'
  else
    if rand(2) == 0
      puts "...you didn't type 'n', 'p', or 'q' like we agreed..."
    else
      puts "...I don't understand..."
    end
  end
end
