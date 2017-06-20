puts "Enter the first value"
a = gets.chomp().to_i

puts "The value entered is:", a
puts "Enter the second value"
b = gets.chomp().to_i
puts "The value entered is:", b
puts "Enter the third value"
c = gets.chomp.to_i
puts "The value entered is:", c

value = [a,b,c]

puts "The greatest number is ", value.max
