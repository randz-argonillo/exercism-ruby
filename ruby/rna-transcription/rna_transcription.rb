
class Complement
  VERSION = 2

  @complements = { 
    dna: {'G' => 'C', 'C' => 'G', 'T' => 'A', 'A' => 'U'},
    rna: {'C' => 'G', 'G' => 'C', 'A' => 'T', 'U' => 'A'}
  }

  def self.of_dna(strands)     
    transcribe(strands, :dna)
  end

  def self.of_rna(strands)
    transcribe(strands, :rna)
  end

private
  def self.transcribe(strands, type)
    0.upto(strands.length-1).inject([]) { |all, idx| all << @complements[type].fetch(strands[idx]) }.join
  rescue KeyError => e
    raise ArgumentError, "Please ensure that your stands are valid."
  end
end