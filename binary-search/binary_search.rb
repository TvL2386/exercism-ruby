=begin
Write your code for the 'Binary Search' exercise in this file. Make the tests in
`binary_search_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/binary-search` directory.
=end

class BinarySearch
  attr_reader :ordered_array

  def initialize(ordered_array)
    @ordered_array = ordered_array
  end

  def search_for(item)
    left = 0
    right = ordered_array.length - 1

    while left <= right do
      @index = ((left + right) / 2).to_i

      if current < item
        left = @index + 1
      elsif current > item
        right = @index - 1
      else
        return @index
      end
    end

    nil
  end

  def current
    ordered_array[@index]
  end
end

