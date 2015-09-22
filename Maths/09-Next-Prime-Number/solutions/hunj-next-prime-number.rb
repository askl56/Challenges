# Monkeypatching!
class Fixnum
  # returns whether the number is a prime number or not
  def is_prime?
    (2..self - 1).each do |x|
      return false if self % x == 0
    end
    true
  end

  # returns the next prime number
  def next_prime
    current = self + 1
    current += 1 until current.is_prime?
    current
  end
end

# main part
current_prime = 1
input = nil
p "The first prime number is #{current_prime}."
while input != 'stop'
  current_prime = current_prime.next_prime
  p "The next prime number is #{current_prime}. Type anything to keep going, or \"stop\" if you want to stop."
  input = gets.chomp.downcase
end
p 'ok bye'
