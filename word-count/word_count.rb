module BookKeeping
  VERSION = 1
end

class Phrase
  def initialize(line)
    @line = line

    parse
  end

  def word_count
    @word_count ||= Hash.new { |h,k| h[k] = 0 }
  end

  private

  def parse
    tokens.each do |token|
      word_count[token.downcase] += 1
    end
  end

  def tokens
    @line.scan(/\b([\w']+)\b/).flatten
  end
end
