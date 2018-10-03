require 'rubygems'
require 'selenium-webdriver'
driver = Selenium::WebDriver.for :chrome
wait = Selenium::WebDriver::Wait.new(:timeout => 10)

driver.get 'https://www.storquest.com/self-storage/az/apache-junction/1047'
sleep 2
element = wait.until { driver.find_elements(class: "ss-search-filtered ember-view xlarge") }
if element.displayed?
driver.save_screenshot('desktopsqhome.png')	
puts "SSF Passes Healthcheck (Desktop)"
else
puts "SSF Widget is NOT LOADING (Desktop)"
end
driver.manage.window.resize_to(375, 667)
driver.navigate.refresh
sleep 2
element = wait.until { driver.find_elements(class: "ss-search-filtered ember-view tiny") }
if element.displayed?
driver.save_screenshot('mobilesqhome.png')	
puts "SSF Passes Healthcheck (Mobile)"
else
puts "SSF Widget is NOT LOADING (Mobile)"
end
