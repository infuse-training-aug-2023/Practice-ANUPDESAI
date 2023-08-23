require 'selenium-webdriver'

Selenium::WebDriver::Chrome::Service.driver_path = "C:/Users/anup.desai/Desktop/selenium/geckodriver.exe"

driver = Selenium::WebDriver.for :firefox

driver.get "https://www.w3.org/WAI/UA/2002/06/thead-test"

element = driver.find_element(:id, "APjFqb").send_keys "infuse goa"

element = driver.find_element(:name,"btnK").click()

sleep(5)
 driver.quit