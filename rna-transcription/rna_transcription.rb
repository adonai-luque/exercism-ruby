# Class Complement has a method of_dna and a hash of DNA nucleotide complements
class Complement
  # This hash stores a complementary RNA strand as a value for a DNA strand as a key
  COMPLEMENTS = {
    'G' => 'C',
    'C' => 'G',
    'T' => 'A',
    'A' => 'U'
  }.freeze

  # of_dna replaces a DNA strand as a string with an RNA strand of each DNA nucleotide complement
  def self.of_dna(strand)
    nucleotides = strand.split('')
    nucleotides.map! { |nucleotide| COMPLEMENTS[nucleotide] }
    nucleotides.join
  end
end
