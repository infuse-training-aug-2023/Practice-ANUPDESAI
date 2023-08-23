require 'selenium-webdriver'

Selenium::WebDriver::Chrome::Service.driver_path = "C:/Users/anup.desai/Desktop/selenium/geckodriver.exe"

driver = Selenium::WebDriver.for :firefox

driver.get "https://www.w3.org/WAI/UA/2002/06/thead-test"

# table = .find_element(:id,"")
table = driver.find_element(:tag_name,"thead")

row = table.find_elements(:tag_name,'th')


puts row.class
# row.each do |th|
#     puts th.text + "\t"
# end