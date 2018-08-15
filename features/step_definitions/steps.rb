require 'selenium-webdriver'
driver = Selenium::WebDriver.for :firefox

Given("I Open automationpractice.com") do  
	driver.navigate.to "http://automationpractice.com"
end

When("I search for skirt") do 
	driver.find_element(:id, "search_query_top").send_keys("skirt")
	driver.find_element(:name, "submit_search" ).click
end

Then("The result will be displayed") do
	wait = Selenium::WebDriver::Wait.new(:timeout => 15) # seconds
  begin
    element = wait.until { driver.find_element(:id => "search") }
  end
end

Given("I Open automationpractice.com in a new tab") do
	#Open a new browser window
	driver.execute_script( "window.open()" )
	#Use the newest window
	driver.switch_to.window( driver.window_handles.last )
	driver.navigate.to "http://automationpractice.com"
end

When("I click women") do
	driver.find_element(:xpath,"//div[@id='block_top_menu']/ul/li/a[@title='Women']").click
end

Then("The women section will be displayed") do
	wait = Selenium::WebDriver::Wait.new(:timeout => 10) # seconds
  begin
    element = wait.until { driver.find_element(:xpath,"//div[@id='block_top_menu']/ul/li/a[@title='Women']")}
  end
end

When("I click logo") do 
	driver.find_element(:xpath,"//div[@id='header_logo']/a/img").click
end

Then('I return to home section') do 
	wait = Selenium::WebDriver::Wait.new(:timeout => 10) # seconds
  begin
    element = wait.until { driver.find_element(:xpath,"//div[@id='header_logo']/a/img")}
  end
end