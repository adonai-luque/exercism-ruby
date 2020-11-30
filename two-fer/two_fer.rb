# An object of the class TwoFer returns a customized message when
# a name is passed as an argument to its class method "two_fer".
# If a name is not passed it takes a default value of "you"
class TwoFer
  def self.two_fer(name = 'you')
    "One for #{name}, one for me."
  end
end
