def largest_prime_factor(n)
  i = 2
  largest = 0
  while (i <= n)
    if n % i == 0
      while n % i == 0
        n /= i
        largest = i
        i += 1
      end
    end
    i += 1
  end
  largest
end

puts largest_prime_factor(600_851_475_143)
