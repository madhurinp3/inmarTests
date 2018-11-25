str = "abcdef"
reverse = ""
str.length.times do |i|
 reverse.insert(i,str[-1-i].chr)
end
puts reverse
