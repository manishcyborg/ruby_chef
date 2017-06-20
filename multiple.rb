def varan(*arg)
	z = arg
	puts z.inject(:*)
end

varan(1,2,3,4)