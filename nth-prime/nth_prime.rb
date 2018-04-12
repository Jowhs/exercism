class Prime

  def self.nth(num)
    raise ArgumentError, 'Invalid Input' if num == 0
    primes = (2..200000).to_a
    (2..num).each do |i|
      primes.reject!{ |j| j % i == 0 && j > i }
    end 
    primes[num - 1]
  end

end

module BookKeeping
  VERSION = 1
end