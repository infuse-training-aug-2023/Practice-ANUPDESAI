require 'selenium-webdriver'

Selenium::WebDriver::Firefox::Service.driver_path = "C:/Users/anup.desai/Desktop/infuse/Practice-ANUPDESAI/selenium/geckodriver.exe"

driver = Selenium::WebDriver.for :firefox

driver.get "https://computer-database.gatling.io/computers"

table = driver.find_element(:class, "computers")

element = table.find_elements(:xpath, ".//tbody/tr")

random_column = rand(0..3)

element.each do |row|
  cells = row.find_elements(:tag_name, "td")
  puts cells[random_column].text
end

sleep 3

driver.quit
