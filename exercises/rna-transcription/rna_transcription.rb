class Complement
	VERSION = 3

	def self.of_dna dna_string
		complement_dna = ""

		dna_string.chars.each do |tupule|
			complement_dna += complement tupule
		end
		complement_dna
	end

	private
	  def self.complement amino
	  	if amino == 'C'
			'G'
		elsif amino == 'G'
			'C'
		elsif amino == 'T'
			'A'
		elsif amino == 'A'
			'U'
		elsif
			raise ArgumentError
		end
	  end
end