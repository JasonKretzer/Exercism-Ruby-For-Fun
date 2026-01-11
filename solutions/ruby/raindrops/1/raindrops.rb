=begin
Write your code for the 'Raindrops' exercise in this file. Make the tests in
`raindrops_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/raindrops` directory.
=end

# more of a classic fizzbuzz solution
# class Raindrops
#   def self.convert(num)
#     return "PlingPlangPlong" if num % 105 == 0
#     return "PlangPlong" if num % 35 == 0
#     return "PlingPlang" if num % 15 == 0
#     return "PlingPlong" if num % 21 == 0
    
#     return "Plong" if num % 7 == 0
#     return "Pling" if num % 3 == 0
#     return "Plang" if num % 5 == 0
#     return num.to_s
#   end
# end

# An interesting Ruby way of doing it
class Raindrops
  SOUNDS = {
    3 => "Pling",
    5 => "Plang",
    7 => "Plong"
  }.freeze

  def self.convert(number)
    # go through each sound, if it is divisible add the noise to an array and then join the array into a string
    result = SOUNDS.map { |divisor, sound| sound if number % divisor == 0 }.join

    # if the result is not divisible by any of them, then return the number as a string
    # else return the result
    result.empty? ? number.to_s : result
  end
end
