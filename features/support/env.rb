require 'rspec'
require 'capybara'
require 'capybara/cucumber'
require 'site_prism'
require 'selenium-webdriver'
require 'securerandom'
require 'require_all'
require 'rest-client'
require_rel '../../pages'
require 'cucumber'
require "csv"

Capybara.app_host =  'http://localhost/litecart/admin'

#setting Capybara driver
Capybara.default_driver = :selenium
Capybara.register_driver :selenium do |app|
  Capybara::Selenium::Driver.new(app, browser: :chrome, options: Selenium::WebDriver::Chrome::Options.new(args: %w[window-size=1800,1000]))
end


  # config.before(:each, js: true) do
  # Capybara.page.driver.browser.manage.window.maximize
  # end

  Before do
    @general_page = GeneralPage.new
    @login_page = LoginPage.new
  end

After do
  #setting Capybara driver to reset sessions after all tests are done
  Capybara.reset_sessions!
end
