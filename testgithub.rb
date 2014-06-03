require 'rubygems'
require 'selenium-webdriver'
wd = Selenium::WebDriver.for :firefox

wd.get "http://sebuilder.github.io/se-builder/"
wd.find_element(:link_text, "Selenium Builder").click
wd.find_element(:xpath, "//ul[@class='footer-links']//a[.='Docs']").click
wd.quit
