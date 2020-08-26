=begin
Write your code for the 'Alphametics' exercise in this file. Make the tests in
`alphametics_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/alphametics` directory.
=end

class Alphametics
  ALLOWED_METHODS = [:+, :==]
  attr_reader :puzzle

  def self.solve(puzzle)
    new(puzzle).solve
  end

  def initialize(puzzle)
    @puzzle = puzzle
  end

  def solve
    permutations.each do |permutation|
      result = letters.zip(permutation).to_h
      equation = generate_equation(result)

      # tokenize equation and convert numbers to Integer
      tokens = equation.split(/\s+/)
      invalid = false

      tokens.map! do |token|
        if token =~ /\A(0)?(\d+)\z/
          invalid = true if $1

          $2.to_i
          token.to_i
        else
          token
        end
      end

      next if invalid

      current = tokens.shift
      while tokens.any?
        method = tokens.shift.to_sym

        if ALLOWED_METHODS.include?(method) and current.respond_to?(method)
          current = current.send(method, tokens.shift)
        else
          raise ArgumentError, "executing method #{method.inspect} for class #{current.class} is not possible or disallowed"
        end
      end

      if current
        # puts "Solution:"
        # p puzzle
        # p equation
        # p result
        return result
      end
    end

    {}
  end

  def letters
    @letters ||= puzzle.chars.grep(/[A-Z]/).uniq
  end

  def permutations
    @permutation_iterator ||= (0..9).to_a.permutation(letters.count)
  end

  def generate_equation(hash)
    puzzle.dup.tap do |replaced|
      hash.each do |letter, value|
        replaced.gsub! letter, value.to_s
      end
    end
  end
end
