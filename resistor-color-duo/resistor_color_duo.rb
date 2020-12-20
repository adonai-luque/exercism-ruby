# class ResistorColorDuo has a constant COLORS that stores colors in an array and a class method value
class ResistorColorDuo
  # The index of the color in the array matches its color code
  COLORS = %w[black brown red orange yellow green blue violet grey white].freeze
  
  # The class method value returns a numeric value of the resistor based on its first two colors
  def self.value(colors)
    10 * COLORS.index(colors[0]) + COLORS.index(colors[1])
  end
end
    