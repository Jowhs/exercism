require 'pry'
require 'pry-byebug'

class Phrase

  attr_accessor :words

  def initialize(words)
    @words = words
  end

  def word_count
    words.downcase.gsub(/^'|\s'|[^a-z'0-9]|'\s+/, " ").split.inject(Hash.new(0)) \
    { |word, counts| word[counts] += 1; word }
  end

end

module BookKeeping
  VERSION = 1
end