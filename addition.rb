#7. Write a Cucumber feature file that passes in two numbers as parameters and displays the sum. The step definitions can be in the programming language of your choice [If you do not know Cucumber, you may choose the test framework of your choice like TestNG, Rspec, Junit,NUnit,specflow..]

#Feature:Addition of two numbers

  #Scenario Outline: Add two numbers
   # Given i take two numbers<num1> and <num2>
   # When we add the two numbers
    #Then the sum should be <output>
    #Examples:
 #     | num1 | num2 | output |
 #     | 2    | 2    | 4      |
 #     | 9    | -1   | 8      |
 #     | -6   | 4    | -2     |
 
 #step_definitions
 
# Given(/^i take two numbers(.*) and (.*)$/) do |num1, num2|
#  @add1=AdditionOfTwoNumbers.new(num1,num2)
# end

# When(/^we add the two numbers$/) do
#  @sum=@add1.add_two_numbers()
# end

# Then(/^the sum should be (.*)$/) do |output|

 # expect(@sum).to eql(output.to_i)
# end

class AdditionOfTwoNumbers

  def initialize(x, y)
    @x=x.to_i
    @y=y.to_i
  end

  def add_two_numbers
    @sum=@x+@y
  end
end
