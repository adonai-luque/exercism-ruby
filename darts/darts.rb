# class Darts was implemented in order to assign a score to a dart toss
class Darts
  # An object of the class 'Darts' has an abscissa and an ordinate
  # The abscissa is the x-axis coordinate and the ordinate the y-axis coordinate
  def initialize(abscissa, ordinate)
    @abscissa = abscissa
    @ordinate = ordinate
  end

  # The method 'score' returns a score based on the dart's distance to the bullseye (0,0)
  def score
    distance_to_bullseye = (@abscissa**2 + @ordinate**2)**0.5
    return 0 if distance_to_bullseye > 10
    return 1 if distance_to_bullseye > 5
    return 5 if distance_to_bullseye > 1

    10
  end
end
