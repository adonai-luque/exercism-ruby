# class ResistorColor has a constant COLORS that stores colors in an array and a class method color_code
class ResistorColor
  # The index of the color in the array matches its color code
  COLORS = %w[black brown red orange yellow green blue violet grey white].freeze

  # The class method color_code returns a color code when a color is passed as an argument
  def self.color_code(color)
    COLORS.index(color)
  end
end
