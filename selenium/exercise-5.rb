require 'selenium-webdriver'

Selenium::WebDriver::Firefox::Service.driver_path = "C:/Users/anup.desai/Desktop/infuse/Practice-ANUPDESAI/selenium/geckodriver.exe"

driver = Selenium::WebDriver.for :firefox

driver.get "https://www.google.co.in/"

element = driver.find_element(:id, "APjFqb").send_keys "infuse goa"

element = driver.find_element(:css,"div.FPdoLc.lJ9FBc > center > input:first-child.gNO89b").click()

sleep(5)
 driver.quit
