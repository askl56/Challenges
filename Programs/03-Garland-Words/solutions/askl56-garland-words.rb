class C223Easy

  # @param str String
  # @return int
  def garland(str)
    str.downcase!
    best = 0
    (1..str.length-1).each { |i|
      if str.end_with?(str[0, i])
        best = i
      end
    }
    best
  end

end
