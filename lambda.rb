def test(x)
	yield 5,4
	puts "You are in the method test"
	yield 100,7
	yield
	yield 2000
	yield 6, 'hello'
	print "data ----> ", x
	puts ""
	yield 7
	yield
end
test(7){|i,j| puts "you are in the block #{i}, #{j}"}
test(8){|y| puts "New blocks are in the block, #{y}"}
test(10){puts "Block with no parameter"}

prc = lambda {|name| puts "hello" + name}
prc.call "Manish"

puts prc.class
