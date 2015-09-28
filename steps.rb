$basicurl = "http://www.toysrus.com"

# def ClosePopUp
#   element = $driver.find_elements :id => "bbiDoNotShow"
#   if element.count > 0
#     element[0].click
#   end
#   element = $driver.find_elements :xpath => "//a[@title = 'Close Chat Invitation']"
#   if element.count > 0
#     element[0].click
#   end
#   element = $driver.find_elements :id => "mopalContinue']"
#   if element.count > 0
#     element[0].click
#   end
# end

# Then /^I LogIn in Facebook$/ do
#   driver = $driver
#   driver.get 'https://www.facebook.com'
#   element = driver.find_element :id => "email"
#   element.send_keys "efimtet@hotmail.com"
#   element = driver.find_element :id => "pass"
#   element.send_keys "1234"
#   element = driver.find_element :id => "loginbutton"
#   element.click
#   sleep 5
# end

# Then /^Click the category Age$/ do
#   element = $driver.find_element :xpath => "//a[@class = 'mainNavLink' and text() = 'Age']"
#   element.click
#   sleep 5
# end

Then /^Click the category ([^"]*) and then click the subcategory ([^"]*)$/ do |x, x2|
  element = $driver.find_element :xpath => "//a[@class = 'mainNavLink' and text() = \"#{x}\"]"
  element.click

  wait = Selenium::WebDriver::Wait.new(:timeout => 40)
  element = $driver.find_element :xpath => "//div[@class= 'sliderWrapper']/p/a[contains (text(), '#{x2}')]"
  element.click
  # sleep 5

end

# Then /^Select first available item on the page$/ do
#   element = $driver.find_element :xpath => "(//img[@class = 'swatchProdImg'])[1]"
#   element.click
#   sleep 5
# end

Then /^Click the Add to Cart$/ do
  element = $driver.find_element :id => "cartAddition"
  element.click
  # sleep 5
end

# Then /^Verify that item added to the cart$/ do
#   element = $driver.find_element :xpath => "//span[@class = 'cartItemCount' and text() = '1']"
# end

Then /^Click category ([^"]*)$/ do |x|
  element = $driver.find_element :xpath => "//a[@class = 'mainNavLink' and text() = \"#{x}\"]"
  element.click
  # sleep 5
end

Then /^Open subcategory Animal Planet$/ do
  element = $driver.find_element :xpath => "//img[@alt = 'Animal Planet']"
  element.click
  # sleep 5
end

Then /^Select subcategory Dinosaurs$/ do
  element = $driver.find_element :xpath => "//a[@class = 'featured-category-link' and text() = 'Dinosaurs']"
  element.click
  # sleep 5
end

# Then /^Select the first available item on the page$/ do
#   element = $driver.find_element :xpath => "//img[@class = 'swatchProdImg']"
#   element.click
#   sleep 10
# end

Then /^Get back to the previous page$/ do
  $driver.navigate.back
  # sleep 10
end

# Then /^Select the second available item on the page$/ do
#   element = $driver.find_element :xpath => "(//img[@class = 'swatchProdImg'])[2]"
#   element.click
#   sleep 12
# end

Then /^Verify that ([^"]*) items added to the cart$/ do |x|
  element = $driver.find_element :xpath => "//span[@class = 'cartItemCount' and text() = '#{x}']"
end

Then /^Remove items from the Cart$/ do
  element = $driver.find_element :xpath => "//a[@class='cartButton']"
  element.click
  # sleep 5
  element = $driver.find_element :xpath => "//a[@id='remove-1']"
  element.click
  # sleep 5
  element = $driver.find_element :xpath => "//a[@id='remove-1']"
  element.click
  # sleep 5
end

Then /^Verify that items removed from the cart$/ do
  element = $driver.find_element :xpath => "//span[@class = 'cartItemCount' and text() = '0']"
end

Then /^Click the catergory Clearance$/ do
  element = $driver.find_element :xpath => "//a[@class = 'mainNavLink clearance' and text() = 'Clearance']"
  element.click
  # sleep 5
end

Then /^Click the subcategory Action Figures$/ do
  element = $driver.find_element :xpath => "//a[@class = 'featured-category-link' and text() = 'Action Figures']"
  element.click
  # sleep 5
end

Then /^Pick the item number ([^"]*)$/ do |x|
  element = $driver.find_element :xpath => "(//img[@class = 'swatchProdImg'])[#{x}]"
  element.click
  # sleep 10
end

Then /^Enter two items in to the field$/ do
  element = $driver.find_element :xpath => "//input[@id = 'quantity']"
  element.clear
  element.send_keys "2"
  # sleep 5
end

Then /^Get back to the main page$/ do
  element = $driver.find_element :xpath => "//li[@class = 'tru active']/a[text() = 'ToysRUs']"
  element.click
  # sleep 5
end

# Then /^Click the category Girl's toys$/ do
#   element = $driver.find_element :xpath => "//a[@class = 'mainNavLink' and text() = \"Girls' Toys\"]"
#   element.click
#   sleep 5
# end

Then /^Click the subcategory 8 - 11 years$/ do
  element = $driver.find_element :xpath => "//div[@class = 'filter_multiselectAttrib']/a[text() = '8-11 Years']"
  element.click
  # sleep 5
end

# Then /^Select third item on the page$/ do
#   element = $driver.find_element :xpath => "(//img[@class = 'swatchProdImg'])[3]"
#   element.click
#   sleep 10
# end

Then /^Click the category Clearance$/ do
  element = $driver.find_element :xpath => "//a[@class = 'mainNavLink clearance' and text() = 'Clearance']"
  element.click
  # sleep 5
end

Then /^Click subcategory Action Figure$/ do
  element = $driver.find_element :xpath => "//div[@class = 'sliderWrapper']/p/a[text() = 'Action Figures']"
  element.click
  # sleep 5
end

Then /^Click Weekly Ad link$/ do
  element = $driver.find_element :xpath => "//ul[@class = 'nav']/li/a[@class = 'liText' and text() = 'Weekly Ad']"
  element.click
  # sleep 5
end

Then /^Verify landing page Weekly Ad$/ do
  element = $driver.find_element :xpath => "//div[@class = 'twd_column twd_oneQuarter1 twd_vr_left twd_hideOnTablet']/div//h2[@class = 'twd_h5']/a[text() = 'Weekly Ad']"
  # puts "Landed on Weekly Ad page"
end

Then /^Search for the item ([^"]*)$/ do |x|
  element = $driver.find_element :xpath => "//input[@name = 'kw']"
  element.send_keys x
  element = $driver.find_element :id => "goButton"
  element.click
  # sleep 5
end


Then /^Verify that correct item ([^"]*) displays$/ do |x|
  element = $driver.find_element :xpath => "//a[@class = 'prodtitle' and contains (text(), '#{x}')]"
end

Then /^Verify that there are elements with ([^"]*) stars$/ do |x|
  element = $driver.find_elements :xpath => "//div[@class = 'prStars' and contains (text(), '#{x}')]"
  puts element.count
end

Then /^Find elements with 5 starts and available for free store pickup$/ do
  element = $driver.find_elements :xpath => "//div[@class = 'prodloop_cont'][.//div[@class = 'prStars' and text() = '4.0 stars']][.//li[@class = 'ispu-eligible']]//a[@class = 'prodtitle']"
  puts element.map {|n| n.attribute("innerHTML")}
end

Then /^Click Sign In link$/ do
  element = $driver.find_element :id => "hdrWelcomeLoginText"
  element.click
  # sleep 3
  element = $driver.find_element :xpath => "//span[@id = 'tipcontentText']//a[text() = 'Sign In']"
  element.click
  # sleep 5
end

Then /^Enter valid credentials$/ do
  element = $driver.find_element :xpath => "//input[@id = 'emailId']"
  element.send_keys "efimtet@hotmail.com"
  # sleep 5
  element = $driver.find_element :xpath => "//input[@id = 'passwd']"
  element.send_keys "1234"
  # sleep 5
  element = $driver.find_element :xpath => "//td[@class = 'checkbg_lt']//input[@class = 'signIn']"
  element.click
  # sleep 5
end