module BookKeeping
  VERSION = 1
end

class Pangram
  def self.is_pangram?(str)
    ('a'..'z').to_a.each do |char|
      if str.downcase.index(char) == nil
        return false
      end
    end
    return true 
  end
 
end
