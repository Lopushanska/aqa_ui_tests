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
require 'capybara-screenshot/cucumber'


Capybara.app_host =  'http://localhost/litecart'

#setting Capybara driver
Capybara.default_driver = :selenium
Capybara.register_driver :selenium do |app|
  Capybara::Selenium::Driver.new(app, browser: :chrome, options: Selenium::WebDriver::Chrome::Options.new(args: %w[window-size=1800,1000]))
end

Selenium::WebDriver::Wait.new(:timeout => 5)


  # config.before(:each, js: true) do
  # Capybara.page.driver.browser.manage.window.maximize
  # end

  Before do
    @general_page = GeneralPage.new
    @login_page = LoginPage.new
    @add_product_page = AddProductPage.new
    @main_page = MainPage.new
    @checkout_page = CheckoutPage.new
  end

After do
  #setting Capybara driver to make screenshot reset sessions after all tests are done
  Capybara::Screenshot.screenshot_and_save_page
  # Capybara.reset_sessions!
end
