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
    tokens.each_with_object({}) do |token, hash|
      hash[token] = hash.fetch(token) {0} + 1
    end
  end

  def tokens
    @line.downcase.scan(/\b([\w']+)\b/).flatten
  end
end
