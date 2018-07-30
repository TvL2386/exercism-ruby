class SecretHandshake
  HANDSHAKE_STEPS = [
    'wink',
    'double blink',
    'close your eyes',
    'jump'
  ]

  def initialize(value)
    @digits = value.is_a?(Integer) ? value.digits(2) : []
  end

  def commands
    response = []

    @digits.each_index do |index|
      if @digits[index] == 1
        if HANDSHAKE_STEPS[index]
          response << HANDSHAKE_STEPS[index]
        else
          response.reverse!
        end
      end
    end

    response
  end
end