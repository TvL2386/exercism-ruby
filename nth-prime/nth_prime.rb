# naive implementation, I know :)

class Prime
  def self.nth(n)
    raise ArgumentError if n <= 0

    primes = []

    (2..Float::INFINITY).lazy.each do |x|
      if is_prime?(x)
        primes << x
        return x if primes.length == n
      end
    end
  end

  def self.is_prime?(nr)
    (2...nr).lazy.each do |x|
      return false if nr % x == 0
    end

    true
  end
end
