module Isogram
  # LONG WAY -- uses a loop to look at each character
  # SHORT WAY below -- extracts only the letters and checks the length vs length of all unique characters
  def self.isogram_long?(input)
    input = input.downcase
    counts = {}
    input.each_char do |c|
      if counts.has_key?(c) && c != '-' && c != ' '
        counts[c] = counts[c] + 1
      else
        counts[c] = 1
      end
    end
    
    !counts.values.any?{ |v| v > 1 }
  end

  def self.isogram_short?(input)
    # get all letters only - no numbers or symbols
    chars = input.downcase.scan(/[a-z]/)
    # uniq gives all the unique characters in an array
    chars.uniq.length == chars.length
  end

  def self.isogram?(input)
    isogram_short?(input)
  end
end
