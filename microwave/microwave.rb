# class 'Microwave' was implemented in order to convert a time entered using a microwave panel keyboard
# to the intended time in minutes and seconds
class Microwave
  def initialize(panel_input)
    @panel_input = panel_input
  end

  # The method 'timer' returns a time in MM:SS format as a string that is the result
  # of the interpretation of the time entered in the microwave panel keyboard in a particular format
  def timer
    seconds = (@panel_input % 100) % 60
    minutes = @panel_input / 100 + (@panel_input % 100) / 60
    "%02<mm>d:%02<ss>d" .% mm: minutes, ss: seconds
  end
end
