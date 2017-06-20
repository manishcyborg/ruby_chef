module Insurance
	Number = 1000
	def self.info
		puts "Insurance info"
	end
end

module Bank
	Number = 2000
	def self.info
		puts "Bank information"
	end
end

class Customer
	include Bank
	include Insurance
end


Insurance.info
Bank.info