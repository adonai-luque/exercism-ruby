# class 'Year' was implemented in order to find if a year is a leap year or not
class Year
  # The class method 'leap?' returns true if the year passed as an argument is a leap year
  # or false otherwise
  def self.leap?(anno)
    return true if (anno % 400).zero?
    return false if (anno % 100).zero?
    return true if (anno % 4).zero?

    false
  end
end
