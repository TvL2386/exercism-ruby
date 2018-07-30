module BookKeeping
  VERSION = 1
end

class Allergies
  LIST = %w(eggs peanuts shellfish strawberries tomatoes chocolate pollen cats)

  def initialize(value)
    @value = value
  end

  def list
    LIST.reject { |allergy| (@value & 2**LIST.index(allergy)).zero? }
  end

  def allergic_to?(allergy)
    list.include?(allergy)
  end
end