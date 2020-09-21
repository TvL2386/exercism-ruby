=begin
Write your code for the 'Scrabble Score' exercise in this file. Make the tests in
`scrabble_score_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/scrabble-score` directory.
=end

class Scrabble
  attr_reader :chars

  VALUES = {}

  { %w(A E I O U L N R S T) => 1,
    %w(D G) => 2,
    %w(B C M P) => 3,
    %w(F H V  W Y) => 4,
    %w(K) => 5,
    %w(J X) => 8,
    %w(Q Z) => 10
  }.each do |chars, value|
    chars.each { |c| VALUES[c] = value }
  end

  def self.score word
    new(word).score
  end

  def initialize word
    @chars = word.to_s.upcase.chars
  end

  def score
    chars.map { |c| VALUES[c] || 0 }.sum
  end
end