#Test Case 5 - Open Google.comand Print Page source.
require 'selenium-webdriver'
require 'webdrivers'

driver = Selenium::WebDriver.for :chrome
begin
    #Maximize size of browser window.
    driver.manage.window.maximize
    # Or Set size of browser window.
    # driver.manage.window.resize_to(375,812)
    driver.navigate.to('https://www.google.com/')
    # Get URL of page and print it
    puts driver.page_source
ensure
    driver.quit
end
