require 'pry'
require 'pry-byebug'

class Phrase
  attr_accessor :words

  def initialize(words)
    @words = words
  end

  def word_count
    words.downcase.gsub(/^'|\s'|[^a-z'0-9]|'\s+/, ' ').split
         .each_with_object(Hash.new(0)) do |word, counts|
           counts[word] += 1
           word
         end
  end
end

module BookKeeping
  VERSION = 1
end