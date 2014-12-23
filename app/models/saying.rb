class Saying < ActiveRecord::Base
	def to_json 
	  { part1: self.part1, separator: self.separator, part2: self.part2 }	
	end
end
