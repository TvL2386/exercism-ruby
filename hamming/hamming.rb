module BookKeeping
  VERSION = 3
end

class Hamming
  def self.compute(strand1, strand2)
    raise(ArgumentError, 'strand length is not equal') unless strand1.length == strand2.length

    diff = 0

    strand1_array = strand1.chars
    strand2_array = strand2.chars

    strand1_array.each_index do |i|
      if strand1_array[i] != strand2_array[i]
        diff += 1
      end
    end

    diff
  end
end