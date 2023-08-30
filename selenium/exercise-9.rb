require 'selenium-webdriver'

Selenium::WebDriver::Firefox::Service.driver_path = "C:/Users/anup.desai/Desktop/infuse/Practice-ANUPDESAI/selenium/geckodriver.exe"

driver = Selenium::WebDriver.for :firefox

driver.get "https://cosmocode.io/automation-practice-webtable/"

element = driver.find_element(:tag_name, "tr").text


puts element



 driver.quit
