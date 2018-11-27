#11. Write a program that can make a connection to the a database and execute a SQL query (SELECT * FROM EMPLOYEE), and prints all the employee names (Assume that there is an employee table with columns ID,NAME,ADDRESS) – Pseudo code would suffice.

require 'rubygems'
require 'active_record'
require 'oci8'


@client=ActiveRecord::Base.establish_connection(
    :adapter => 'oracle_enhanced',
    :host => '@localhost:1522:orcl',
    :database => 'test',
    :username => 'sys',
    :password=>'password'
)
sql = "SELECT * FROM users"

result = @client.exec_query(sql)

results.each do |row|
  puts row[0]
end
