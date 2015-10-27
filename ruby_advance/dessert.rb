class Dessert
	@name
	@calories
  def initialize(name, calories)
    @name = name
		@calories = calories
  end
	def name
		@name
	end
	def name=(x)
		@name = x
	end
	def calories
		@calories
	end
	def calories=(x)
		@calories = x
	end
  def healthy?
    return true if @calories < 200
		return false
  end
  def delicious?
    return true
  end
end

class JellyBean < Dessert
	@flavor
  def initialize(flavor)
    @calories = 5
		@name = flavor + " jelly bean"
		@flavor = flavor
  end
	def flavor  
    @flavor  
  end   
  def flavor=(x)  
    @flavor=x  
  end  
	def delicious?
		return false if @flavor == 'licorice'
		return true
	end
end

