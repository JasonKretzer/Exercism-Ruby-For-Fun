class Anagram
    def initialize(word)
      @word = word.downcase
      @counts = parse_word(@word)
    end

    def match(words)
      words.select do |w|
        @counts == parse_word(w.downcase) && @word != w.downcase
      end
    end

    def parse_word(word)
      word.each_char.with_object(Hash.new(0)) { |c, counts| counts[c] += 1 }
    end

  # not used in this solution but is loop based way of doing the same thing as parse_word
    def parse_word_verbose(word)
      counts = {}
      word.each_char do |c|
        if counts.has_key?(c)
          counts[c] = counts[c] + 1
        else
          counts[c] = 1
        end
      end
      counts
    end
  end
