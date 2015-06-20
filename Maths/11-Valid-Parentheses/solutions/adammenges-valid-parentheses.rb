def balanced?(string)
  string.each_char.inject(0) { |open, char|
    return false if open < 0
    char == '(' ? open + 1 : open - 1
  } == 0
end