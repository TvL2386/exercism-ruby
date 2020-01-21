class Matrix
  attr_reader :rows, :columns

  def initialize(text)
    @rows = text.lines.map do |line|
      line.split.map(&:to_i)
    end

    @columns = @rows.transpose
  end
end
