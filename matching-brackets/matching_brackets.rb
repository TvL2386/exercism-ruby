=begin
Write your code for the 'Matching Brackets' exercise in this file. Make the tests in
`matching_brackets_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/matching-brackets` directory.
=end

class Brackets
  MATCHING_BRACKETS = { '}' => '{', ']' => '[', ')' => '(' }

  OPENING_BRACKETS = MATCHING_BRACKETS.values
  CLOSING_BRACKETS = MATCHING_BRACKETS.keys

  def initialize chars
    @chars = chars
  end

  def self.paired? string
    new(string.chars).paired?
  end

  def paired?
    array = Array.new

    @chars.each do |char|
      if OPENING_BRACKETS.include? char
        array.unshift char
      elsif CLOSING_BRACKETS.include? char
        return false if array.shift != MATCHING_BRACKETS[char]
      end
    end

    array.empty?
  end
end
