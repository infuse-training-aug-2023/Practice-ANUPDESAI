
require 'selenium-webdriver'

Selenium::WebDriver::Chrome::Service.driver_path = "C:/Users/anup.desai/Desktop/infuse/Practice-ANUPDESAI/selenium/geckodriver.exe"

driver = Selenium::WebDriver.for :firefox

driver.manage.window.maximize

driver.get('https://practise.usemango.co.uk/')


search_input = driver.find_element(:css, 'div:last-child.navbar-nav.ml-auto > a:first-child.nav-item.nav-link.active').click()
search_input = driver.find_element(:id, 'exampleInputEmail1').send_keys "anup"
search_input = driver.find_element(:id, 'exampleInputPassword1').send_keys "11111"
search_input = driver.find_element(:css, 'button.btn.btn-dark').click()

# Assuming 'driver' is your Selenium WebDriver instance
element = driver.find_element(:id, "element_id")
driver.execute_script("arguments[0].scrollIntoView();", element)


# # Press the Enter key to perform the search
# search_input.send_keys :return

# # Wait for the search results to load
# wait = Selenium::WebDriver::Wait.new(timeout: 10)
# search_results = wait.until { driver.find_elements(:class, 'gsc-webResult') }

# # Click on the first search result
# search_results.first.click

# # Perform some interactions on the opened page
# # For example, let's click on the "Try it Yourself" button for "HTML Forms"
# try_it_yourself_button = driver.find_element(:link_text, 'Try it Yourself »')
# try_it_yourself_button.click

# # Wait for the "Run" button to be clickable
# wait.until { driver.find_element(:id, 'runbtn').enabled? }

# # Close the WebDriver
# driver.quit
