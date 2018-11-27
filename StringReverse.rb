# Write a program to reverse a string “abcdef” --> “fedcba”

str = "abcdef"
puts "Original String is : #{str}"
reverse = ""
puts "string length #{str.length}"

str.length.times do |i|

  reverse.insert(i,str[-1-i].chr)
end
puts "Reverse String is : #{reverse}"
