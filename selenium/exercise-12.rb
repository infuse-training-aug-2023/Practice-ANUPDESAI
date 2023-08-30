require 'selenium-webdriver'

def setup_driver
  Selenium::WebDriver::Firefox::Service.driver_path = "C:/Users/anup.desai/Desktop/infuse/Practice-ANUPDESAI/selenium/geckodriver.exe"
  driver = Selenium::WebDriver.for :firefox
  driver.manage.window.maximize
  driver
end

def search_amazon(driver, query)
  driver.get('https://www.amazon.com')
  search_input = driver.find_element(css: 'input#twotabsearchtextbox')
  search_input.send_keys(query)
  search_input.submit
end

def click_search_result(driver)
  wait = Selenium::WebDriver::Wait.new(timeout: 10)
  wait.until { driver.title.downcase.include?('laptop') }
  search_result_link = driver.find_element(css: '#nav-link-accountList')
  search_result_link.click
end

def create_amazon_account(driver, name, email, password)
  search_result_link = driver.find_element(id: 'createAccountSubmit')
  search_result_link.click
  driver.find_element(id: 'ap_customer_name').send_keys(name)
  driver.find_element(id: 'ap_email').send_keys(email)
  driver.find_element(id: 'ap_password').send_keys(password)
  driver.find_element(id: 'ap_password_check').send_keys(password)
  submit = driver.find_element(id: 'continue')
  submit.click
  sleep(4)
  driver.find_element(id: 'ap_email').send_keys("12134234242")
  contact_number = driver.find_element(id: 'continue')
  contact_number.click
end

def navigate_to_account(driver)
  driver.find_element(css: '.a-link-nav-icon').click()
end

def main
  driver = setup_driver
  search_amazon(driver, 'laptop')
  click_search_result(driver)
  create_amazon_account(driver, "Anup", "anupdedsdsai2702@gmail.com", "agygsygyd!213@@")
  navigate_to_account(driver)
  driver.quit
end

main
