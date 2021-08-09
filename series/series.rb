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

  def slices(slice_length)
    raise ArgumentError if slice_length > digits_length

    last_start = digits_length - slice_length
    (0..last_start).map { |n| digits[n, slice_length] }
  end
end
