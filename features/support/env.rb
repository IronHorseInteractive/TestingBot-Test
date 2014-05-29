require 'capybara'
require 'capybara/cucumber'
require 'selenium/webdriver'
require 'testingbot/cucumber'
Capybara.configure do |config|
  config.run_server = false
  config.default_driver = :testingbot
  config.default_wait_time = 20 #for ajax heavy site, site it to a higher number
end
