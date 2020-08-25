=begin
Write your code for the 'Strain' exercise in this file. Make the tests in
`strain_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/strain` directory.
=end

class Array
  def keep(&block)
    each_with_object([]) do |item, arr|
      arr << item if block.call(item)
    end
  end

  def discard(&block)
    each_with_object([]) do |item, arr|
      arr << item unless block.call(item)
    end
  end
end