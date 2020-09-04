=begin
Write your code for the 'Isogram' exercise in this file. Make the tests in
`isogram_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/isogram` directory.
=end

class Isogram
  ISOGRAM_CHARS = ('a'..'z').each_with_object({}) { |char, hash| hash[char] = true }

  def self.isogram? input
    chars_seen = {}

    input.downcase.each_char do |char|
      if ISOGRAM_CHARS[char]
        return false if chars_seen[char]

        chars_seen[char] = true
      end
    end

    true
  end
end