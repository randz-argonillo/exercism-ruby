module Complement

  VERSION = 2

  DNA_NUCLEOTIDES = 'GCTA'
  RNA_NUCLEOTIDES = 'CGAU'

  def self.of_dna(dna)
    transform(dna, DNA_NUCLEOTIDES, RNA_NUCLEOTIDES)
  end

  def self.of_rna(rna)
    transform(rna, RNA_NUCLEOTIDES, DNA_NUCLEOTIDES)
  end

  private

  def self.transform(str, from_nucleotides, to_nucleotides)
    binding.pry
    raise ArgumentError.new('contains illegal nucleotide/character') if str.delete(from_nucleotides).length > 0
    str.tr(from_nucleotides, to_nucleotides)
  end

end