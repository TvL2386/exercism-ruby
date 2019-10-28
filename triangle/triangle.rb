=begin
Write your code for the 'Triangle' exercise in this file. Make the tests in
`triangle_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/triangle` directory.
=end

class Triangle
  def initialize(sides)
    @sides = sides
  end

  def equilateral?
    not violate_triangle_inequality? and uniq_sides_is?(1)
  end

  def isosceles?
    not violate_triangle_inequality? and (uniq_sides_is?(2) or uniq_sides_is?(1))
  end

  def scalene?
    not violate_triangle_inequality? and uniq_sides_is?(3)
  end

  private

  def uniq_sides_is?(value)
    @sides.uniq.count == value
  end

  # https://en.wikipedia.org/wiki/Triangle_inequality
  def violate_triangle_inequality?
    ! (2*@sides.max < @sides.sum)
  end
end
