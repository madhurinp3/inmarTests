#5. Write a simple routine that makes a call to the REST end point (http://www.thomas-bayer.com/sqlrest/CUSTOMER/) and prints the response status code and response body

require 'rubygems'
require 'restclient'
require 'json'

url = 'http://www.thomas-bayer.com/sqlrest/CUSTOMER/'
begin
  response = RestClient.get(url)
  puts "Response Code is : #{response.code}"
  puts "Response Message is : #{response}"
rescue
    puts 'error in response'

end
