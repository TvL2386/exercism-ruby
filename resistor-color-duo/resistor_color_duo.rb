class ResistorColorDuo
  colors = %w(black brown red orange yellow green blue violet grey white)

  VALUE_MAP = Hash[colors.zip(colors.size.times)]

  def self.value(colors)
    colors.take(2).map { |color| VALUE_MAP[color] }.join.to_i
  end
end