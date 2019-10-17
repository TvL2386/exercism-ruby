class ResistorColorDuo
  VALUE_MAP = Hash[%w(black brown red orange yellow green blue violet grey white).map.with_index.to_a]

  def self.value(colors)
    colors.take(2).map { |color| VALUE_MAP[color] }.join.to_i
  end
end