class String
  def equivalent_with?(string)
    return false if length != string.length
    chars.sort.join == string.chars.sort.join
  end
end
