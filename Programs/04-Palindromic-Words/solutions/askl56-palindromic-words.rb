def to_palindrome(number, steps = 0, original_number = number)
  if is_palindrome?(number)
    "#{original_number} gets palindromic after #{steps} steps: #{number}"
  else
    to_palindrome(number.to_s.reverse.to_i + number, steps + 1, original_number)
  end
end

def is_palindrome?(number)
  number.to_s.reverse.eql?(number.to_s)
end
