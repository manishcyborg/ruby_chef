f1 = File.new('test.text', 'w+')
data = "Here is the first line
this is seond line"

f1.write(data)
f1.close

f2 = File.readlines('test.text')
print f2
f2.insert(2, "New line is inserted")
puts f2

data2 = f2.join(" ")
print data2

f3 = File.open('test.text', 'w+')
f3.write(data2)
f3.close

puts File.read("test.text")