module BookKeeping
  VERSION = 3
end

class Raindrops
  def self.convert(input)
    array1 = []
    array2 = []

    current = input

    (1...input).each do |i|
      break if current < i

      if input % i == 0
        current = input / i

        array1 << i
        array2 << current
      end
    end

    response = (array1 + array2.reverse).uniq.map do |number|
      case number
        when 3
          'Pling'
        when 5
          'Plang'
        when 7
          'Plong'
        else
          nil
      end
    end.join

    response.empty? ? input.to_s : response
  end
end
