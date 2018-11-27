#9. Write a Selenium script that fills the form www.practiceselenium.com/practice-form.html and submits the page. After submitting , verify that the page navigates to home page

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
