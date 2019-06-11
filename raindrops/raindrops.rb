module BookKeeping
  VERSION = 3
end

class Raindrops
  def self.convert(input)
    sound = ''

    if input%3 == 0
      sound += 'Pling'
    end

    if input%5 == 0
      sound += 'Plang'
    end

    if input%7 == 0
      sound += 'Plong'
    end

    (sound.length > 0) && sound || input.to_s
  end
end
