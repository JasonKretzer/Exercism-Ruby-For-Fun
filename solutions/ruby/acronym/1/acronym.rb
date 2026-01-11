=begin
Write your code for the 'Acronym' exercise in this file. Make the tests in
`acronym_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/acronym` directory.
=end
class Acronym
  def self.abbreviate(phrase)
    tokens = phrase.gsub('-',' ').gsub(/\p{Punct}/, '').split(' ')
    abbreviation = ''
    tokens.each do |token|
      abbreviation += token[0].capitalize unless token.empty?
    end
    abbreviation
  end
end