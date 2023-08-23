require 'selenium-webdriver'

Selenium::WebDriver::Firefox::Service.driver_path = "C:/Users/anup.desai/Desktop/infuse/Practice-ANUPDESAI/selenium/geckodriver.exe"

driver = Selenium::WebDriver.for :firefox

driver.get "https://letcode.in/forms"

element = driver.find_element(:css, "div:nth-child(2).columns.container > div:last-child.column.is-half > div.field > div.control > div.select")

element = driver.find_elements(:tag_name,"option")

element.each do |option|
  puts option.text
end


 driver.quit
