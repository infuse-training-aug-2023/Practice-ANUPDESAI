require 'selenium-webdriver'

Selenium::WebDriver::Chrome::Service.driver_path = "C:/Users/anup.desai/Desktop/infuse/Practice-ANUPDESAI/selenium/geckodriver.exe"

driver = Selenium::WebDriver.for :firefox

driver.get "https://www.google.co.in/"

element = driver.find_element(:css,"div.FPdoLc.lJ9FBc > center > input:last-child.RNmpXc").click()


 driver.quit
