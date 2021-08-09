module Hamming
  def self.compute(first_strand, second_strand)
    first_length = first_strand.length
    second_length = second_strand.length
    raise ArgumentError unless first_length == second_length

    distance = 0
    (0...first_length).each { |i| distance += 1 unless first_strand[i] == second_strand[i] }
    distance
  end
end
