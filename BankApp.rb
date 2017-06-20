class BankApp
	@@balance = 0
	def initialize
		puts "welcome to the Banking App"
		puts "May I have your Bank Name !!!"
		@@name = gets.chomp
		bank_name
		@@msg = "Please select your options:
		Choose 1: Balance Information
		Choose 2: Deposit
		Choose 3: Withdrawal
		Choose 4: Exit"
		puts @@msg
		bank_transaction
		puts "Thanks for Banking with us !!!"

	end

	def bank_name
		puts "you have chosen #{@@name} bank for your transaction"
		puts "Greetings from #{@@name}"
	end

	def bank_transaction
		option = gets.chomp
		puts "You have chosen option #{@option}"
		case option
		when 1
			balance_information
		when 2
			deposit
		when 3
			withdrawal
		when 4
			exit
		end
	end

	def balance_information
		if @@balance == 0
			puts "Please deposit some money, chindi chor !!"
		else
			return puts "you have #{@@balance} in your account"
		end
	end

	def deposit(amount)
		puts "Enter the amount you want to deposit"
		amount = gets.chomp.to_i
		puts "You have deposited #{@balance}"
		@@balance += amount
		puts "Your total balance is INR {@@balance}"

	end

	def withdrawal
	end
	def exit
	end



end

bank = BankApp.new


