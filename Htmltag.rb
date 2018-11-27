#8. Write a selenium script that prints the html tag of all the links (<a> tags) on the website http://www.inmar.com

require 'rubygems'
require 'watir'
require 'rspec'

@browser=Watir::Browser.new :chrome
@browser.window.maximize
@browser.goto "https://www.inmar.com/"
html=@browser.html
values = html.split('<').collect!{|v| '<' + v }

html_tags=[]
values.each do|i|

  if i.include? '<a'
    html_tags << i

  end

end

puts html_tags
