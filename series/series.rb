=begin
Write your code for the 'Series' exercise in this file. Make the tests in
`series_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/series` directory.
=end

class Series
  def initialize string
    @chars = string.chars
  end

  def slices count
    raise ArgumentError, 'index out of bounds' if count > @chars.count

    @chars.each_cons(count).map(&:join)
  end
end