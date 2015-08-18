require 'capybara/rspec'
require 'capybara/webkit'
require 'selenium/webdriver'
Dir["./spec/support/*.rb"].each { |file| require file }
require './models/models'
require 'dotenv'
Dotenv.load

if ENV["USE_CHROME_BROWSER"]
  Capybara.register_driver :selenium do |app|
    Selenium::WebDriver::Chrome.path = ENV["CHROME_PATH"] if ENV["CHROME_PATH"]
    Capybara::Selenium::Driver.new app, browser: :chrome
  end
end

if ENV['DRIVER']
  driver = ENV['DRIVER'].to_sym
else
  driver = :selenium
end

Capybara.default_driver = Capybara.javascript_driver = driver
Capybara.app_host = ENV['WEB_SERVER_URL']

RSpec.configure do |config|
  config.expect_with :rspec do |expectations|
    expectations.include_chain_clauses_in_custom_matcher_descriptions = true
  end

  config.mock_with :rspec do |mocks|
    mocks.verify_partial_doubles = true
  end

end

