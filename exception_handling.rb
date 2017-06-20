#exception_handling
begin
	raise "A test exception"
rescue Exception => e
	puts e.message
	puts e.backtrace.inspect
	#puts e.methods
ensure
	puts "Ensuring exception"
end