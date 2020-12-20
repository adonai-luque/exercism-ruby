# An object of the class TwoFer has a class method "two_fer"
class TwoFer
  # two_fer returns a customized message when a name is passed as an argument
  # If a name is not passed it takes a default value of "you"
  def self.two_fer(name = 'you')
    format('One for %s, one for me.', name)
  end
end
