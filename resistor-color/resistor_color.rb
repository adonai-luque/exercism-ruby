# class ResistorColor has a constant COLORS that stores colors in an array
# The index of the color in the array matches its color code
# There is also a class method "color_code" that returns a color code when a color is passed as an argument
class ResistorColor
  COLORS = %w[black brown red orange yellow green blue violet grey white].freeze
  def self.color_code(color)
    COLORS.index(color)
  end
end
