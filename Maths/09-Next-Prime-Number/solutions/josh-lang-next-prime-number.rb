@offset = 0
@primes = [2]
input = ''
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

def out(off)
  unless off < 0
    output = @primes[off]
    puts "=> #{output}"
  else
    if rand(2) == 0
      puts 'Woah, now'
      @offset = 0
    else
      puts 'NO!'
      @offset = 0
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
    @offset += 1
    add_prime
    out(@offset)
  elsif input == 'p' || input == 'prev' || input == 'previous'
    @offset -= 1
    out(@offset)
  elsif input == 'q' || input == 'quit'
    puts 'quitting'
    break
  else
    if rand(2) == 0
      puts "...you didn't type 'n', 'p', or 'q' like we agreed..."
    else
      puts "...I don't understand..."
    end
  end
end
