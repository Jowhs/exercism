class Sieve
    attr_accessor :num

    def initialize(num)
        @num = num
    end

    def primes
        primes = (2..num).to_a
        (2..num).each do |i|
            primes.reject!{ |j| j % i == 0 && j > i }
        end
        primes  
    end
end

module BookKeeping
    VERSION = 1
end