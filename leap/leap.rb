class Year
  def self.leap?(anno)
    if (anno % 400).zero?
      return true
    elsif (anno % 100).zero?
      return false
    elsif (anno % 4).zero?
      return true
    else
      return false
    end
  end
  
