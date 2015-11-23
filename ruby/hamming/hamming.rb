class Hamming
  VERSION = 1

  def self.compute(dna1, dna2)
    raise(ArgumentError, "DNA strands should be in the same length") if dna1.length != dna2.length
    dna_seq = dna1.chars.zip(dna2.chars)
    dna_seq.count { |a, b| a != b }
  end

end