class Phrase
  private

  def initialize(phrase)
    @phrase = phrase.downcase
  end

  public

  attr_reader :phrase

  def word_count
    ocurrences = Hash.new(0)
    phrase.scan(/\b[a-z0-9']+\b/).each { |w| ocurrences[w] += 1 }
    ocurrences
  end
end
