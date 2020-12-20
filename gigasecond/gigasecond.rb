# An object of the class Gigasecond has a method from
class Gigasecond
  # The class method from returns the moment when 1000000000 seconds had elapsed
  # from an initial time passed as an argument
  def self.from(birth_time)
    birth_time + 1_000_000_000
  end
end
