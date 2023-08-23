require 'selenium-webdriver'

Selenium::WebDriver::Chrome::Service.driver_path = "C:/Users/anup.desai/Desktop/infuse/Practice-ANUPDESAI/selenium/geckodriver.exe"

driver = Selenium::WebDriver.for :firefox

driver.get "https://cosmocode.io/automation-practice-webtable/"

element = driver.find_element(:tag_name, "tr")

element = element.find_elements(:tag_name,"strong")


element.each do |header|
  puts header.text
end

 driver.quit
