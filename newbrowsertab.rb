# 10. Write a Selenium script that clicks the button “New Browser tab” on the form http://www.seleniumframework.com/Practiceform/ and prints the title of the page that opens in the new tab. Also verify that two windows are open and print the title of both the windows
require 'rubygems'
require 'watir'
require 'rspec'

@browser=Watir::Browser.new :chrome
@browser.window.maximize
@browser.goto "http://www.seleniumframework.com/practiceform/"
@browser.button(:xpath=>"//*[@onclick='newBrwTab()']").click
sleep (3)
practice_form=@browser.windows.first
new_tab_page=@browser.windows.last
puts practice_form.title
puts new_tab_page.title
sleep(2)
# @browser.window(index: 1).exists?
practice_form.exists?
new_tab_page.exists?
