require 'selenium-webdriver'

Selenium::WebDriver::Firefox::Service.driver_path = "C:/Users/anup.desai/Desktop/infuse/Practice-ANUPDESAI/selenium/geckodriver.exe"

driver = Selenium::WebDriver.for :firefox

driver.get "https://testpages.herokuapp.com/styled/basic-html-form-test.html"

element = driver.find_element(:name, "dropdown")
select = Selenium::WebDriver::Support::Select.new(element)

options = select.options
i= 2
option = options[i]

option.click

value = option.attribute("value")

puts "Selected dropdown item value: #{value}"

sleep 3

driver.quit
