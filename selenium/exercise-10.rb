require 'selenium-webdriver'

Selenium::WebDriver::Chrome::Service.driver_path = "C:/Users/anup.desai/Desktop/infuse/Practice-ANUPDESAI/selenium/geckodriver.exe"

driver = Selenium::WebDriver.for :firefox

driver.get "https://computer-database.gatling.io/computers"

# element = driver.find_element(:tag_name, "tr")
element = driver.find_element(:tag_name, "tbody")
element = element.find_elements(:tag_name, "a")



element.each do |header|
  puts header.text
end

 driver.quit
