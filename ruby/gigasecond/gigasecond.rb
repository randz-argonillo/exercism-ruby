class Gigasecond
  VERSION = 1
  GIGA = (10**9)
  
  def self.from(time)
    time + GIGA
  end
end