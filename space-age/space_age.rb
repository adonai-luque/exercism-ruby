# class 'SpaceAge' was implemented in order to find a relative age in a particular planet
class SpaceAge
  # 'EARTH_YEAR' stores the amount of seconds in an Earth year
  # 'YEAR_DURATIONS' stores the duration of a year relative to the Earth year
  EARTH_YEAR = 31_557_600
  YEAR_DURATIONS = {
    on_earth: 1.0,
    on_mercury: 0.2408467,
    on_venus: 0.61519726,
    on_mars: 1.8808158,
    on_jupiter: 11.862615,
    on_saturn: 29.447498,
    on_uranus: 84.016846,
    on_neptune: 164.79132
  }.freeze

  # An object of the class 'SpaceAge' is created with an age in seconds passed as an argument
  # With that 'age_in_seconds' we define all the methods needed to find the relative age on each planet
  def initialize(age_in_seconds)
    @age_in_seconds = age_in_seconds
    YEAR_DURATIONS.each do |name, factor|
      self.class.send(:define_method, name) { @age_in_seconds / (EARTH_YEAR * factor) }
    end
  end
end
