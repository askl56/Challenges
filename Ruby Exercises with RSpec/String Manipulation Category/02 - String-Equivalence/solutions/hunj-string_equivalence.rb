class String
  def equivalent_with? string
    return false if self.length != string.length
    self.chars.sort.join == string.chars.sort.join
  end
end