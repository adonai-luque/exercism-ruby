# class 'Pangram' was implemented in order to find if a sentence is a pangram
class Pangram
  # The class method 'pangram?' returns true if all the letters of the alphabet are included
  # in the sentence passed as an argument or false if at least one letter is missing
  def self.pangram?(sentence)
    sentence.downcase!
    ('a'..'z').map { |letter| sentence.include?(letter) }.all?
  end
end
