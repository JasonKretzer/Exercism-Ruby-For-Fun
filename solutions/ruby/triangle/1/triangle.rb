=begin
Starting with a VERY VERBOSE solution that has memoization and properly handles booleans being memoized.
It should be easier to read for someone not familiar with some of the more terse (but amazing!) ruby syntax.
See below for a very compact version.
=end
# class Triangle
#   attr_reader :sides
  
#   def initialize(sides)
#     @sides = sides
#     @exactly_three_sides = has_three_sides?
#     @no_zeroes = no_zero_sides?
#     @valid_triangle = is_valid_triangle?
#   end

#   def equilateral?
#     exactly_three_sides? && no_zeroes? && valid_triangle? && all_sides_equal? 
#   end

#   def isosceles?
#     exactly_three_sides? && no_zeroes? && valid_triangle? && (any_two_sides_equal? || all_sides_equal?)
#   end

#   def scalene?
#     exactly_three_sides? && no_zeroes? && valid_triangle? && no_sides_equal?
#   end

#   private

#   def exactly_three_sides?
#     @exactly_three_sides ||= defined?(@exactly_three_sides) ? @exactly_three_sides : has_three_sides?
#   end

#   def has_three_sides?
#     @sides.length == 3
#   end

#   def no_zeroes?
#     @no_zeroes ||= defined?(@no_zeroes) ? @no_zeroes : no_zero_sides?
#   end

#   def no_zero_sides?
#     @sides.all?(&:positive?)
#   end

#   def valid_triangle?
#     @valid_triangle ||= is_valid_triangle?
#   end

#   def is_valid_triangle?
#     a, b, c = @sides
#     a + b > c &&
#     b + c > a &&
#     a + c > b
#   end

#   def all_sides_equal?
#     a, b, c = @sides
#     a == b && a == c
#   end

#   def any_two_sides_equal?
#     @sides.uniq.length == @sides.length-1
#   end

#   def no_sides_equal?
#     @sides.uniq.length == @sides.length
#   end
# end

# Terse but still correct and handles degenerate triangles.  No memoization which should be fine considering how cheap the calculations are.
class Triangle
  def initialize(sides)
    @sides = sides
  end

  def equilateral?; valid? && @sides.uniq.size == 1; end
  def isosceles?;   valid? && (@sides.uniq.size == 2 || @sides.uniq.size == 1); end
  def scalene?;     valid? && @sides.uniq.size == 3; end

  private

  def valid?
    @sides.size == 3 && @sides.all?(&:positive?) &&
      (a, b, c = @sides; a + b > c && b + c > a && a + c > b)
  end
end






