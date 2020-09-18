=begin
Write your code for the 'Isogram' exercise in this file. Make the tests in
`isogram_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/isogram` directory.
=end

require 'set'

class Isogram
  ISOGRAM_CHARS = ('a'..'z').each_with_object({}) { |char, hash| hash[char] = true }

  def self.isogram? input
    input.downcase.each_char.each_with_object(Set.new) do |char, set|
      return false if ISOGRAM_CHARS[char] && set.add?(char).nil?
    end

    true
  end
end
