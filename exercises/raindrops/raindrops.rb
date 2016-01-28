class Raindrops
	VERSION = 1
	def self.convert param
		output = ""
	
		if param % 3 == 0
			output << "Pling"
		end
		if param % 5 == 0
			output << "Plang"
		end
		if param % 7 == 0
			output << "Plong"
		end
		output.empty? ? param.to_s : output
	end
end