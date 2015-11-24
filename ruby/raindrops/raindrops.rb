require 'prime'

class Raindrops
  VERSION = 1

  def self.convert(number)
    factors = Prime.prime_division(number).flatten
    sound_of(number, factors)
  end

private

  def self.sound_of(orig_num, factors)
    sounds = { 3 => 'Pling', 5 => 'Plang', 7 => 'Plong'}
    result = sounds.select { |k, v| factors.include? k }.values.join
    (result.empty?) ? orig_num.to_s : result
  end
end

