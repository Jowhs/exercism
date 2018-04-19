class Squares

    attr_reader :numbers

    def initialize(num)
        @numbers = (1..num)
    end

    def square_of_sum
        numbers.inject {|total, n| total + n} ** 2
    end

    def sum_of_squares
        numbers.map {|n| n**2}.inject(0, &:+)
    end

    def difference
        square_of_sum - sum_of_squares
    end
end

module BookKeeping
    VERSION = 4
end