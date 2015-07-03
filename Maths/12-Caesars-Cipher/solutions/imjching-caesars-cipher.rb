def caesar_cipher(string, shiftkey)
  shiftkey.times { string = string.tr('a-zA-Z','b-zaB-ZA') }
  string
end

p caesar_cipher('Hello Caesar cipher!', 7) == 'Olssv Jhlzhy jpwoly!'