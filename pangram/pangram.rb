class Pangram
    def self.pangram?(phrase)
        abc = ("a".."z").to_a
        phrase.downcase.split('').select{ |i| abc.include?(i) }.uniq.sort == abc
    end
end

module BookKeeping
    VERSION = 6
end