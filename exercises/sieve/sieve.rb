class Sieve
  @number
  def initialize(num)
    @number = num
  end
  def primes
    result = []
    if @number < 2
      return result    
    else
      (2..@number).each do |i| 
        for j in (2..i) do
	  break if i % j == 0
        end
        if j == i
	  result << i
	end
      end
    end
    return result
  end
end
