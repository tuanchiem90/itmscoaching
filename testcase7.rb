#Test Case 7 – Input form
require 'selenium-webdriver'
require 'webdrivers'

driver = Selenium::WebDriver.for :chrome
begin
    # Open this URL 
    driver.navigate.to('https://itmscoaching.herokuapp.com/form')
    #Maximize size of browser window.
    driver.manage.window.maximize
    # Or Set size of browser window.
    # driver.manage.window.resize_to(375,812)
    # Find all element names
    ip_first_name = driver.find_element(id: 'first-name')
    ip_last_name = driver.find_element(id: 'last-name')
    ip_job = driver.find_element(id: 'job-title')
    radio_college = driver.find_element(id: 'radio-button-2')
    checkbox_male = driver.find_element(id: 'checkbox-1')

    # Option
    option_exp = driver.find_element(id: 'select-menu')
    select_exp = Selenium::WebDriver::Support::Select.new(option_exp)

    # Calendar
    ip_date = driver.find_element(id: 'datepicker')

    # Submit button
    btn_submit = driver.find_element(:xpath, "//a[@class='btn btn-lg btn-primary']")
    
    # Enter the form data and click handling
    ip_first_name.send_keys('iTMS')
    ip_last_name.send_keys('Coaching')
    ip_job.send_keys('QA')
    radio_college.click
    checkbox_male.click

    # Dropdown handling by index
    select_exp.select_by(:index, 2)
    ip_date.click

    # Set up a calendar on October 27, 2020 
    year = driver.find_element(:xpath, "//th[contains(text(),'September 2020')]")
    year.click
    year = driver.find_element(:xpath, "//div[@class='datepicker-months']//th[@class='datepicker-switch'][contains(text(),'2020')]")
    year.click
    year_2025 = driver.find_element(:xpath, "//span[contains(text(),'2025')]")
    year_2025.click
    month_oct = driver.find_element(:xpath, "//span[contains(text(),'Oct')]")
    month_oct.click
    day_27 = driver.find_element(:xpath, "//td[contains(text(),'27')]")
    day_27.click
    sleep 3

    # Submit
    btn_submit.click
    sleep 3
ensure
    driver.quit
end