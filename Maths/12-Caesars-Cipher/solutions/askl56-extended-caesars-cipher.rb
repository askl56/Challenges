# Caesar Cipher
# Simple text cipher that shifts letters a fixed number of positions

def caesar_cipher_encrypt(string, shift)
  # Alphabet Arrays
  alpha = ('a'..'z').to_a
  alphaBig = ('A'..'Z').to_a
  new_string = ''

  # Do shift on each letter one at a time
  string.split(//).each do |letter|
    # See if letter should be shifted, shift using function
    if alpha.include? letter
      new_letter = letterShift(letter, alpha, shift)
    elsif alphaBig.include? letter
      new_letter = letterShift(letter, alphaBig, shift)
    else
      new_letter = letter
    end
    new_string += new_letter
  end
  new_string
end

def caeser_cipher_decrypt(string, shift)
  caesar_cipher_encrypt(string, 0 - shift)
end

def letterShift(letter, array, shift)
  # captures letter shift logic

  index = array.index(letter)
  new_index = (index + shift) % (array.length)
  new_letter = array[new_index]
end

# #Tests##
message = 'HI'
puts '-----Test 1-----'
key1 = 2
encrypted_message1 = caesar_cipher_encrypt(message, key1)
puts "Encrypted Message 1: #{encrypted_message1}"
decrypted_message1 = caeser_cipher_decrypt(encrypted_message1, key1)
puts "Decrypted message 1: #{decrypted_message1}"

puts '-----Test 2-----'
message = 'HI'
key2 = 20
encrypted_message2 = caesar_cipher_encrypt(message, key2)
puts "Encrypted Message 2: #{encrypted_message2}"
decrypted_message2 = caeser_cipher_decrypt(encrypted_message2, key2)
puts "Decrypted message 1: #{decrypted_message2}"
