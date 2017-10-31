require 'selenium-webdriver'

driver = Selenium::WebDriver.for :firefox
driver.navigate.to "http://google.com"

element = driver.find_element(:name, 'q')
element.send_keys "Brian Ricker Bend,OR"
element.submit

driver.quit


e,e