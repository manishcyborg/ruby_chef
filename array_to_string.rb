puts "enter the values"
chapters = []
while true
  input = gets.chomp.to_i
  break if input.empty?
  chapters << input
end
value = chapters
puts value.inject(:*)

#puts "Chapters: " + chapters.join(" ")

#puts value.map { |i| "'" + i.to_s + "'" }.join(",")