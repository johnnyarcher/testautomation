require 'rubygems'
require 'selenium-webdriver' 
	browser = Selenium::WebDriver.for :chrome
	browser.get "http://www.heritageoaksliving.com/leads/mobile_request_info/store/16108" 
	wait = Selenium::WebDriver::Wait.new(:timeout => 30) 
		input = wait.until {
    		element = browser.find_element(:id, 'lead_first_name')
    		element if element.displayed?
		}
		input.send_keys("TEST")
		
		input = wait.until {
    		element = browser.find_element(:id, 'lead_email')
    		element if element.displayed?
		}
		input.send_keys("TEST@TEST.COM")
    browser.find_element(:css, "input[type='submit']").click
browser.quit
