# 1. Write a program that does – Loop through [1..100], if a number is divisible by 3, print “fizz”, divisible by 5 print “buzz”, divisible by 3 & 5, print “fizzbuzz”

1.upto(100) do |i|
 if i % 5 == 0 and i % 3 == 0
 puts "FizzBuzz"

elsif i % 3 == 0

 puts "Buzz"

elsif i % 5 == 0

  puts "Fizz"

else
  puts i

end

end
