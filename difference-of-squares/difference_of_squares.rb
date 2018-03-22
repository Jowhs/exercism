class Squares

    attr_reader :numbers

    def initialize(num)
        @numbers = (1..num)
    end

    def square_of_sum
        sq_sm = numbers.inject {|total, n| total + n}
        return sq_sm**2
    end

    def sum_of_squares
        sm_sq = numbers.map {|n| n**2}.inject(0, &:+)
        return sm_sq
    end

    def difference
        square_of_sum - sum_of_squares
    end
end

module BookKeeping
    VERSION = 4
end