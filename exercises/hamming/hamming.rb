class Hamming
	VERSION = 1
	
	def self.compute(str1, str2)
		count = 0
		arr1 = str1.chars
		arr2 = str2.chars
		if str1.length != str2.length
			raise ArgumentError
		else
		 arr1.each_with_index do |arr1_elem,index|
		 	puts "Comparing #{arr1_elem}, #{arr2[index]}"
		 	if arr1_elem != arr2[index]
		 		count = count + 1
		 	end
		 end
		end
		count
	end
end