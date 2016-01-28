class HelloWorld
	def self.hello name=nil
		unless name
		"Hello, World!"
		else
		"Hello, #{name}!"
		end
	end
end