require 'prime'

class Raindrops
  def self.convert(num)
    factors = Prime.prime_division(num).map {|x| x[0]}
    res = ""
    res << "Pling" if factors.include?(3)
    res << "Plang" if factors.include?(5)
    res << "Plong" if factors.include?(7)
    res.empty? ? num.to_s : res
  end
end

module BookKeeping
    VERSION = 3
end