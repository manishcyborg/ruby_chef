class WellsFargo
	attr_accessor :name, :branch, :location
	@@Ifsc = 1
	def initialize(name, location, branch)
		@name = name
		@location = location
		@branch = branch
		@@Ifsc += 1
		
	end

	def wells_info
		puts "Welcome to:  #{@name} Bank"
		puts "Name of the Bank:  #{@name}"
		puts "Location of the bank is: #{@location} and branch is: #{@branch}"
		puts "#{@branch} is having IFSC code: WELLS000#{@@Ifsc}"
		puts "@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@"
	end

end

class Employee < WellsFargo
	attr_accessor :age

	def initialize(ename,eloc, ebranch,age)
		super(ename,eloc, ebranch)
		#@ename = ename
		#@eloc = eloc
		#@ebranch = ebranch
		@age = age

		puts "The employee name is #{ename}"
		puts "Employee location is #{eloc}"
		puts "Th branchassigned to employee is #{ebranch}"

	end
	def einfo(ename, eloc)
		@ename = ename
		@eloc = eloc
		puts "Employee Name is #{@ename} and location is #{@eloc}"
		puts "Employee age is #{@age}"
		puts "@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@"
	end

=begin
	def winfo(ename, eloc)
		wells_info(ename, eloc)
	end
=end

	private
	def wells_info(ename,eloc)
		super()
		@ename=ename
		@eloc = eloc
		puts "Employee Name is #{@ename}"
		puts "Location for Employee is #{@eloc}"


	end
    public
	def get_name
		@ename
	end
	def set_name=(ename)
		@ename = ename
	end

end

bank = Employee.new("Wells Fargo India","India", "Madhapur", 26 )
#bank.winfo("manish copy", "Madhapur copy")
bank.name = "Punjab National bank"
bank.location = "Punjab"
puts bank.name
puts bank.location
puts "This is getting name from bank -----> ", bank.get_name

#bank.einfo("Manish", "Kondapur")
#bank.wells_info("Stupid guy", "mental hospital")
bank.send :wells_info, "New guy", "new location"


bank = Employee.new("State Bank Of India","India", "kondapur", 26 )
#bank.winfo("Shimna copy", "kondapur copy")
#bank.einfo("Shimna", "chennai")
puts "This is getting name from bank -----> ", bank.get_name