module BookKeeping
  VERSION = 1
end

class Fixnum
  def to_roman
    number = self
    roman_string = ""
    result_mapping = Fixnum::ROMAN_MAPPING.clone
    result_mapping.keep_if { |k,v|
      k <= self    
    }
    
    while(number > 0)
      max = result_mapping.max_by{ |k,v| k }
      if (number < max[0] || roman_string.count(max[1]) == 3)
        result_mapping.delete(max[0])
        next
      end
   
      number -= max[0]
      roman_string += max[1]
    end
    return roman_string
  end
  
  ROMAN_MAPPING = { 1 => 'I', 
    4 => 'IV',
    5 => 'V',
    9 => 'IX',
    10 => 'X',
    40 => 'XL',
    50 => 'L',
    90 => 'XC',
    100 => 'C',
    400 => 'CD',
    500 => 'D',
    900 => 'CM',
    1000 => 'M'
  }
end
