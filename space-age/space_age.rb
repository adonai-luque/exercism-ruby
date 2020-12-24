class SpaceAge
  def initialize(age_in_seconds)
    @age_in_seconds = age_in_seconds
  end

  def on_earth
    (@age_in_seconds/(31557600.0)).round(2)
  end

  def on_mercury
    (@age_in_seconds/(31557600*0.2408467)).round(2)
  end

  def on_venus
    (@age_in_seconds/(31557600*0.61519726)).round(2)
  end

  def on_mars
    (@age_in_seconds/(31557600*1.8808158)).round(2)
  end

  def on_jupiter
    (@age_in_seconds/(31557600*11.862615)).round(2)
  end

  def on_saturn
    (@age_in_seconds/(31557600*29.447498)).round(2)
  end

  def on_uranus
    (@age_in_seconds/(31557600*84.016846)).round(2)
  end
  
  def on_neptune
    (@age_in_seconds/(31557600*164.79132)).round(2)
  end
end
