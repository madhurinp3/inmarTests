#3. Write a program that can parse an integer array and verify that is of social security number format. SSN number format is [3 digits – 2 digits – 4 digits] Ex: 123-45-5678


ssn=[123456789,88877755,99988888777373,7893749328]

ssn_string=[]

ssn.each do |number|
  ssn_string << number.to_s.insert(3,'-').insert(6,'-')
end
regex=(/^\d{3}-\d{2}-\d{4}$/)
ssn_string.each do|number|
  if regex.match(number)
    puts number + "is a valid ssn"
  else
    puts number+" is not a valid ssn"
  end
end
