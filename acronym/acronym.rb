# class 'Acronym' was implemented in order to find the acronym of a phrase
class Acronym
  # The class method 'abbreviate' returns a word formed combining the uppercased
  # initial letters of the words in the phrase passed as an argument
  def self.abbreviate(name)
    name
      .scan(/\b[a-zA-Z]/)
      .join
      .upcase
  end
end
