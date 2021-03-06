module FunWithStrings
  def palindrome?
    return false if self.empty?
	s = self.reverse.downcase
	s1 = s.gsub(/[^a-zA-Z0-9]/,"")
	s2 = self.downcase.gsub(/[^a-zA-Z0-9]/,"")
	return true if s1 == s2
	return false
  end
  def count_words
    count = Hash.new
	count.default = 0
	a = self.downcase.gsub(/[^a-zA-Z0-9]/," ")
	a = a.split
	a.each {|x| count[x] += 1}
	return count
	
  end
  def anagram_groups
	a = [[],[]]
	a = self.split.group_by{|a| a.chars.sort}.values
	return a
  end
end

# make all the above functions available as instance methods on Strings:

class String
  include FunWithStrings
end

