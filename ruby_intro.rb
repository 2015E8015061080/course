# When done, submit this entire file.

# Part 1

def sum arr
  total = 0
  arr.each {|a| total += a}
  return total
end

def max_2_sum arr
  if arr.empty? then return 0
	elsif arr.size == 1 then return arr[0]
	else a= Array.new
		a=arr.sort {|x,y| y <=> x }
		return a[0] + a[1]
	end
end

def sum_to_n? arr, n
  	case arr.size
	when 0 
		return false
	when 1 
		return false
	else a= Array.new
		a=arr.sort
		i = 0
		j = a.size - 1
		while i < j do
			b = a[i] + a[j]
			if b == n 
			    return true
			elsif b > n 
				j=j-1
			else i=i+1 
			end
		end
				
	end
	return false
end

# Part 2

def hello(name)
  return "Hello, #{name}"
end

def starts_with_consonant? s
	return false if s.size == 0 
  	consonant = Array["A","E","I","O","U"]
	f=s[0].capitalize
	if f>'A'&& f<'Z' then
	return false if consonant.include?f
	return true
	else return false
	end
end

def binary_multiple_of_4? s
  	return false if s.size == 0 
	binary = Array["0","1"]
	for i in 0...s.size
	unless binary.include?s[i] 
	return false 
	end
	end
	if s.to_i(2) % 4 == 0
	return true 
	else return false
	end
end

# Part 3

class BookInStock
	@isbn
	@price
	def initialize (isbn, price)  
		raise ArgumentError, "Error isbn" if isbn.size==0
    	@isbn=isbn
		raise ArgumentError, "Error price" unless price > 0
     	@price=price
	end 
   
	def isbn  
    	@isbn  
  	end   
   
  	def isbn=(x)  
		raise ArgumentError, "Error isbn" if x.size==0
    	@isbn=x  
  	end  
   
  	def price  
    	@price  
  	end  
   
  	def price=(x)  
		raise ArgumentError, "Error price" unless x > 0
     	@price=x  
  	end   
	def price_as_string
		price_f = format("%.02f",@price.to_f) 
		return "$#{price_f}"
	end
end
