# frozen_string_literal: true

# class 'HighScores' was created in order to provide insights into a list of scores
class HighScores
  private

  # An object is initialized passing an array of scores as a parameter
  def initialize(scores)
    @scores = scores
  end

  public

  # The scores can be accessed calling the reader method 'scores'
  attr_reader :scores

  # This method returns the latest registered score
  def latest
    scores.last
  end

  # This method returns the best score. The maximum score of the list
  def personal_best
    personal_top_three.first
  end

  # This method returns the top three scores. If there aren't 3 scores in the list
  # it returns as much scores as it can get
  def personal_top_three
    scores.max([scores.length, 3].min)
  end

  # This method evaluates if the latest score registered is also the best score
  def latest_is_personal_best?
    latest == personal_best
  end
end
