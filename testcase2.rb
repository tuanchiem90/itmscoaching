require 'selenium-webdriver'

driver = Selenium::WebDriver.for :chrome
begin
    #Maximize size of browser window.
    driver.manage.window.maximize
    # Or Set size of browser window.
    # driver.manage.window.resize_to(375,812)
    driver.navigate.to('https://www.google.com/')
ensure
    driver.quit
end