module BookKeeping
  VERSION = 4
end

class Complement
  DNA = 'GCTA'
  RNA = 'CGAU'

  def self.of_dna(dna)
    return '' if (dna.chars - DNA.chars).any?

    dna.tr(DNA, RNA)
  end
end
