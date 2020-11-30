# An object of the class Gigasecond returns the moment when 1000000000 seconds had
# elapsed from an initial time passed as an argument to its class method "from"
class Gigasecond
  def self.from(birth_time)
    birth_time + 1_000_000_000
  end
end
