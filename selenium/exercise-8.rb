require 'selenium-webdriver'

Selenium::WebDriver::Firefox::Service.driver_path = "C:/Users/anup.desai/Desktop/infuse/Practice-ANUPDESAI/selenium/geckodriver.exe"

driver = Selenium::WebDriver.for :firefox

driver.manage.window.maximize

driver.get "https://www.globalsqa.com/demo-site/sliders/#Steps"

iframe = driver.find_element(:css, "iframe.demo-frame.lazyloaded")

driver.switch_to.frame(iframe)

slider = driver.find_element(:id, "slider")

span = slider.find_element(:tag_name, "span")

span.send_keys :arrow_right

amount = driver.find_element(:id, "amount").attribute("value")

puts "Amount: #{amount}"

sleep(3)

driver.switch_to.default_content

driver.quit
