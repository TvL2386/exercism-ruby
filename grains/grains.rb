module BookKeeping
  VERSION = 1
end

class Grains
  def self.square(square)
    raise(ArgumentError, 'square must be between 1 and 64') unless (1..64).include?(square)

    2**(square-1)
  end

  def self.total
    # 2**64 - 1
    (1..64).sum { |i| Grains.square(i) } # because: challenge accepted :-)
  end
end
