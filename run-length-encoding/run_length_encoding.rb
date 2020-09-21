=begin
Write your code for the 'Run Length Encoding' exercise in this file. Make the tests in
`run_length_encoding_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/run-length-encoding` directory.
=end

class RunLengthEncoding
  def self.encode input
    input
      .chars
      .chunk_while { |char, next_char| char == next_char }
      .map { |chunk| chunk.length > 1 ? "#{chunk.length}#{chunk.first}" : chunk.first }
      .join
  end

  def self.decode input
    input
      .chars
      .chunk_while { |char, _| ('0'..'9').include?(char)  }
      .map do |chunk|
        char = chunk.pop
        times = chunk.join.to_i
        times > 1 ? char*times : char
      end
      .to_a
      .join
  end
end