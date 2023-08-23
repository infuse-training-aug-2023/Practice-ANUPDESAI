require 'selenium-webdriver'

Selenium::WebDriver::Firefox::Service.driver_path = "C:/Users/anup.desai/Desktop/infuse/Practice-ANUPDESAI/selenium/geckodriver.exe"

driver = Selenium::WebDriver.for :firefox


driver.manage.window.maximize


driver.get('https://www.amazon.com')

search_input = driver.find_element(css: 'input#twotabsearchtextbox')
search_input.send_keys('laptop')
search_input.submit


wait = Selenium::WebDriver::Wait.new(timeout: 10)
wait.until { driver.title.downcase.include?('laptop') }

search_result_link = driver.find_element(css: '#nav-link-accountList')
search_result_link.click
search_result_link = driver.find_element(id: 'createAccountSubmit')
search_result_link.click

driver.find_element(id: 'ap_customer_name').send_keys "Anup"
driver.find_element(id: 'ap_email').send_keys "anupdedsdsai2702@gmail.com"
driver.find_element(id: 'ap_password').send_keys "agygsygyd!213@@"
driver.find_element(id: 'ap_password_check').send_keys "agygsygyd!213@@"
submit = driver.find_element(id: 'continue')
submit.click
Sleep(4)
driver.find_element(id: 'ap_email').send_keys "12134234242"
contact_number = driver.find_element(id: 'continue')
contact_number.click

driver.find_element(css: '.a-link-nav-icon').click()

driver.quit
