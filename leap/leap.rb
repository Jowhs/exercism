class Year 
  def self.leap?(year)
    return true if (year % 4 == 0 && year % 100 != 0) || (year % 400 == 0 && year % 4 == 0 && year % 100 == 0)
  end
end

module BookKeeping
  VERSION = 3
end