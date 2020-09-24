#Test Case 6 – Get page title after searching with Google.com
require 'selenium-webdriver'
require 'webdrivers'

driver = Selenium::WebDriver.for :chrome
begin
    # Open this URL 
    driver.navigate.to('https://www.google.com/')
    #Maximize size of browser window.
    driver.manage.window.maximize
    # Or Set size of browser window.
    # driver.manage.window.resize_to(375,812)
    # Find the name element and search with ‘iTMS Coaching’ word
    search_bar = driver.find_element(name: 'q')
    search_bar.send_keys('iTMS Coaching')
    # Find the xpath button and click it 
    btn_search = driver.find_element(:xpath, "//div[@class='FPdoLc tfB0Bf']//input[@name='btnK']")
    btn_search.click
    # Get Page title and print it.
    puts driver.title
    sleep 3
ensure
  
end

