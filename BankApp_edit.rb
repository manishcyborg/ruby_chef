class WellsFargo
	@@ifsc=0	#Class Variable
	def initialize(name,loc,branch)
		#attr_accessor :name :loc :branch

		puts "Initialization of WellsFargo class"
		@n=name
		@l=loc
		@b=branch
		@@ifsc+=1
	end

	def BranchInformation()
		puts "Welcome to #{@n} Bank"
		puts "Location:- #{@l}"
		puts "Branch:-  #{@b} "
		puts "IFSC Code of your branch:- #{@@ifsc}"
	end
end

class Customer < WellsFargo
	@@balance=0
	def initialize(name,loc,branch,cname)
		super(name,loc,branch)
		@name=cname
		puts "Your Name:- #{@name}"
	end
	
	def Deposit
		puts "Enter amout to be deposited"
		amount=gets.chomp.to_i
		@@balance+=amount
		puts "Amount #{amount} Deposited"		
	end

	def Withdraw	
		puts "Enter Amount to be withdrawn"
		amount=gets.chomp.to_i
		@@balance-=amount
		puts "Amount #{amount} withdrawn"
	end

	def CheckBalance
		puts "Balance :- #{@@balance}"
	end
end

C1=Customer.new("WellsFargo","Hyderabad","Gachibowli","Sateesh")

ch=0
while ch<5
	puts "Please select what would you like to do.."
	puts "1.Deposit Money"
	puts "2.Withdaw Money"
	puts "3.Check Balance"
	puts "4.Exit"
	
	ch=gets.chomp.to_i

	if ch==1
		puts "Coice is 1"	
		C1.Deposit()
	elsif ch==2
		puts "Coice is 2"	
		C1.Withdraw()
	elsif ch==3
		puts "Coice is 3"	
		C1.CheckBalance()
	else
		puts " Thank you for banking with us..."		
		break
	end
end