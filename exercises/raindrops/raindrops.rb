class Raindrops
  VERSION = 1
  def self.convert param
    hash = {Pling: 3, Plang: 5, Plong: 7}
    output = ""

    hash.each{ |key, index|
      param % index == 0 ? (output << key.to_s) :  ""
    }
    output.empty? ? param.to_s : output
  end
end
