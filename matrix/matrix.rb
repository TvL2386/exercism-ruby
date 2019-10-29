class Matrix
  attr_reader :rows, :columns

  def initialize(text)
    @rows = text.split("\n").map do |line|
      line.split(' ').map(&:to_i)
    end

    @columns = @rows.count.times.map do |index|
      @rows.map { |row| row[index] }
    end
  end
end
