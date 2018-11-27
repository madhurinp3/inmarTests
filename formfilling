#9. Write a Selenium script that fills the form www.practiceselenium.com/practice-form.html and submits the page. After submitting , verify that the page navigates to home page

require 'rubygems'
require 'watir'
require 'rspec'

@browser=Watir::Browser.new :chrome
@browser.window.maximize
@browser.goto "http://www.practiceselenium.com/practice-form.html"
@browser.text_field(:name=>"firstname").set('test')
@browser.text_field(:name=>"lastname").set('123')
@browser.radio(:value => "Female").set
@browser.radio(:value => "3").set
@browser.text_field(:id=>"datepicker").set('20/11/2018')
@browser.checkbox(:value => "Black Tea").set
@browser.checkbox(:value => "One of those things").set
@browser.select_list(:id => "continents").select 'Asia'
@browser.select_list(:name => "selenium_commands").select 'Switch Commands'
@browser.button(:id => "submit").click
# expect(@browser.title).to eql("Welcome")
@browser.text.include? 'Welcome'
homepage =  @browser.text.include?("We're passionate about tea.")
# expect(homepage).to eql(true)
@browser.close
