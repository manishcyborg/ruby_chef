#regex.rb
phone = "2004-959-559 #This is phone number"
phone = phone.sub!(/#.*$/, "")
puts "Phone num , #{phone}"

phone = phone.gsub!(/\D/,"")
puts "Phone num: #{phone}"


text = "rails9 are rails, really good Ruby on grails rails"


text.gsub!(/\brails\b/, "Rails")

puts "#{text}"