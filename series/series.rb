class Series
  private

  def initialize(digits)
    @digits = digits
  end

  public

  attr_reader :digits

  def digits_length
    digits.length
  end

  def slices(number_of_digits)
    raise ArgumentError if number_of_digits > digits_length
      
    last_start = digits_length - number_of_digits
    (0..last_start).map { |n| digits[n, number_of_digits] }
  end
end
