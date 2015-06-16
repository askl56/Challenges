def sieve number
  sieve = Array.new(number-2, true)
  sieve[0] = false # to exclude 0 from a prime number...
  
  (2..Math::sqrt(number).to_i).each do |i|
    if sieve[i] == true
      (i*i..number).step(i) do |j|
        sieve[j] = false
      end
    end
  end

  sieve
end

def primes_up_to number
  arr = sieve number
  result = []
  arr.each_index { |i|
    result << i if arr[i] == true
  }
  result
end


p primes_up_to 100 # => [1, 2, 3, 5, 7, 11, 13, 17, 19, 23, 29, 31, 37, 41, 43, 47, 53, 59, 61, 67, 71, 73, 79, 83, 89, 97]