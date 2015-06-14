# Satisfy rspec
def reverse_string(str)
  reversed_string = []
  og_string = str.split("")

  until og_string.empty?
    reversed_string << og_string.pop
  end

  reversed_string.join
end

# More like actual reverse method
class String
  def reverse
    reversed_string = []
    og_string = self.split("")

    until og_string.empty?
      reversed_string << og_string.pop
    end

    reversed_string.join
  end
end
