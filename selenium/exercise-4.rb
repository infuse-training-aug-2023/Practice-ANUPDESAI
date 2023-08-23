

require 'selenium-webdriver'

Selenium::WebDriver::Chrome::Service.driver_path = "C:/Users/anup.desai/Desktop/infuse/Practice-ANUPDESAI/selenium/geckodriver.exe"

driver = Selenium::WebDriver.for :firefox

driver.get "https://demo.automationtesting.in/Register.html"

element = driver.find_element(:css,"div.form-group > div.col-md-4.col-xs-4.col-sm-4 > label:first-child").click()

sleep(5)
 driver.quit
