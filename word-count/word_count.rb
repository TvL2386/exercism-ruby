module BookKeeping
  VERSION = 1
end

class Phrase
  def initialize(line)
    @line = line
  end

  def word_count
    @word_count ||= parse
  end

  private

  def parse
    tokens.each_with_object(Hash.new(0)) do |token, count|
      count[token] += 1
    end
  end

  def tokens
    @line.downcase.scan(/\b[\w']+\b/)
  end
end
