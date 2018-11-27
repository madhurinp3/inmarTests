#12. Write a program that can parse a JSON string {a:1,b:2,c:3} and print the keys and values. Then access the value 3 using its key ‘c’.

require 'json'

res = "{\"a\":\"1\", \"b\":\"2\",\"c\":\"3\"}";
 jsonHashmap = JSON.parse(res)

x = jsonHashmap['c']
puts "value of c is #{x}"

jsonHashmap.each do |key, value|
  puts "#{key}:#{value}"
end
