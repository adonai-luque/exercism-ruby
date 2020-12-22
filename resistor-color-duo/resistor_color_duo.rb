# class ResistorColorDuo has a constant 'BAND_COLORS' that stores colors in an array and a class method 'value'
# This class was created in order to find the numeric value of a resistor given its band colors
class ResistorColorDuo
  # The index of the color in the array matches its color code
  BAND_COLORS = %w[black brown red orange yellow green blue violet grey white].freeze

  # The class method 'value' returns a numeric value of the resistor based on its first two band colors
  def self.value(colors)
    10 * BAND_COLORS.index(colors[0]) + BAND_COLORS.index(colors[1])
  end
end
