require 'selenium-webdriver'

Selenium::WebDriver::Chrome::Service.driver_path = "C:/Users/anup.desai/Desktop/infuse/Practice-ANUPDESAI/selenium/geckodriver.exe"

driver = Selenium::WebDriver.for :firefox

driver.get "https://testpages.herokuapp.com/styled/basic-html-form-test.html"

element = driver.find_element(:name, "dropdown")

i= 2

element = driver.find_elements(:tag_name,"option")[i-1]



puts element.text



 driver.quit
