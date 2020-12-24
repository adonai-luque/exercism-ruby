# class 'HighScores' was created in order to provide insights into a list of scores
class HighScores
  attr_reader :scores

  # An object is initialized passing an array of scores as a parameter
  # Those scores can be accessed calling the reader method 'scores'
  def initialize(scores)
    @scores = scores
  end

  # This method returns the latest registered score
  def latest
    scores.last
  end

  # This method returns the best score. The maximum score of the list
  def personal_best
    scores.max
  end

  # This method returns the top three scores. If there aren't 3 scores in the list
  # it returns as much scores as it can get
  def personal_top_three
    scores
      .sort
      .reverse
      .slice(0, [scores.length, 3].min)
  end

  # This method evaluates if the latest score registered is also the best score
  def latest_is_personal_best?
    latest == personal_best
  end
end
