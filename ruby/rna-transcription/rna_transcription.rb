
class Complement
  VERSION = 2

  COMPLEMENTS = { 
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
  def self.transcribe(strands, to_type)
    0.upto(strands.length-1).inject('') do |all, idx| 
      all << COMPLEMENTS[to_type].fetch(strands[idx]) do 
        raise ArgumentError, "Please ensure that your strands are valid." 
      end
    end
  end
end