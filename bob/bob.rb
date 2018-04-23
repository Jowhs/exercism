# Bob exercise
class Bob
  def self.hey(remark)
    case
    when remark !~ /[a-z]/ && remark =~ /[A-Z]/ then 'Whoa, chill out!'
    when remark.strip.end_with?('?') then 'Sure.'
    when remark =~ /\A\s*\z/ then 'Fine. Be that way!'
    else 'Whatever.'
    end
  end
end

module BookKeeping
  VERSION = 1
end
