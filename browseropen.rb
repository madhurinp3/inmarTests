#6. Write Selenium script that opens a browser, prints the title of the browser and closes the browser [You may choose the programming language of your choice]


require 'rubygems'
require 'watir'
require 'rspec'

@browser=Watir::Browser.new :chrome
@browser.window.maximize
@browser.goto "http://www.seleniumframework.com/practiceform/"
practice_form=@browser.windows.first
puts practice_form.title
sleep(2)
practice_form.exists?
@browser.close
