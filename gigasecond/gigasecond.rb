class Gigasecond
    @gigasecond = 1000000000
    def self.from(time)
        time += @gigasecond
    end
end

module BookKeeping
    VERSION = 6
end