require 'rubygems'
require 'selenium-webdriver'
driver = Selenium::WebDriver.for :chrome
wait = Selenium::WebDriver::Wait.new(:timeout => 15)
driver.get 'https://www.storquest.com/'
q = driver.page_source
if q.include?("G5_PLATFORM_ID")
puts "Storquest Passes Healthcheck"
else
puts "Storquest FAILS Healthcheck"
end

driver.get 'https://www.morgancommunities.com/'
q = driver.page_source
if q.include?("G5_PLATFORM_ID")
puts "Morgan Passes Healthcheck"
else
puts "Morgan is DOWN"
end

driver.get 'http://www.americareusa.net/'
q = driver.page_source
if q.include?("G5_PLATFORM_ID")
puts "Americare Passes Healthcheck"
else
puts "Americare FAILS Healthcheck"
end

driver.get 'https://www.quadrealres.com'
q = driver.page_source
if q.include?("G5_PLATFORM_ID")
puts "Quadreal Passes Healthcheck"
else
puts "Quadreal is DOWN"
end

driver.get 'https://www.metrostorage.com'
q = driver.page_source
if q.include?("G5_PLATFORM_ID")
puts "Metro Passes Healthcheck"
else
puts "Metro is DOWN"
end

driver.get 'https://www.berkshirecommunities.com/'
q = driver.page_source
if q.include?("G5_PLATFORM_ID")
puts "Berkshire Passes Healthcheck"
else
puts "Berkshire is DOWN"
end

driver.get 'http://www.youranimalhospital.com'
q = driver.page_source
if q.include?("G5_PLATFORM_ID")
puts "NVA Passes Healthcheck"
else
puts "NVA is DOWN"
end

driver.get 'https://www.pacificaseniorliving.com/'
q = driver.page_source
if q.include?("G5_PLATFORM_ID")
puts "Pacifica Passes Healthcheck"
else
puts "Pacifica is DOWN"
end

driver.get 'https://g5marketingcloud.com/g5_header'
q = driver.page_source
if q.include?("G5")
puts "Marketing Cloud Passes Healthcheck"
else
puts "The Marketing Cloud is DOWN"
end

driver.get 'https://www.g5demo.com'
q = driver.page_source
if q.include?("g5home")
puts "Demo Passes Healthcheck"
else
puts "Demo is DOWN"
end

driver.get 'https://www.g5search.com'
q = driver.page_source
if q.include?("g5home")
puts "Core Passes Healthcheck"
else
puts "Core is DOWN"
end

driver.get 'http://g5-inventory.herokuapp.com/'
q = driver.page_source
if q.include?("G5Inventory 1.0")
puts "Inventory Passes Healthcheck"
else
puts "Inventory is DOWN"
end

driver.get 'https://g5-vendor-leads.herokuapp.com/'
q = driver.page_source
if q.include?("G5VendorLeadsService")
puts "Vendor Leads Passes Healthcheck"
else
puts "Vendor Leads is DOWN"
end

driver.get 'https://reputation.g5search.com'
q = driver.page_source
if q.include?("G5 Reputation Manager")
puts "Rep Man Passes Healthcheck"
else
puts "Rep Man is DOWN"
end

driver.get 'https://provisioner.g5marketingcloud.com/outages?'
q = driver.page_source
if q.include?("Down")
puts "SITE DOWN - Refer to the Provisioner Outage monitor for details"
else
puts "All Sites Healthy"
end

driver.get 'https://www.facebook.com/'
q = driver.page_source
if q.include?("G5_PLATFORM_ID")
puts "This tool is broken"
else
puts "TEST SCRIPT IS WORKING"
end
