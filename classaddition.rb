#4. Define a class that has two properties x and y. Add a method to the class that adds x & y. Write a routine that uses this class to add two numbers. Write some test cases to test the addition method in the class

class Addition

  @@x = 1
  @@y = 2

  def add()

    @z = @@x + @@y

   puts "Addition of two numbers is #{@z}"

end
end

b = Addition.new
b.add()
