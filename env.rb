require 'rubygems'
require 'selenium-webdriver'
require 'cucumber'


# $driver.get "http://www.toysrus.com"


Before do
  $driver = Selenium::WebDriver.for :firefox
  $driver.get $basicurl
  $driver.manage.window.maximize
 end

AfterStep do
  $driver.manage.timeouts.implicit_wait = 5
  def ClosePopUp
    element = $driver.find_elements :id => "bbiDoNotShow"
    element_1 = $driver.find_elements :xpath => "//a[@title = 'Close Chat Invitation']"
    element_2 = $driver.find_elements :id => "mopalContinue']"
    if element.count > 0
      element[0].click
    end
    if element_1.count > 0
      element[0].click
    end
    if element_2.count > 0
      element[0].click
    end
  end
end

After do
# $driver.close
  $driver.quit
end