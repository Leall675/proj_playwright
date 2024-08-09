require 'capybara'
require 'capybara/playwright'
require 'playwright'
require 'site_prism'
require 'pry'
require_relative 'page_objects'

World(PageObjects)

Capybara.register_driver(:playwright) do |app|
  Capybara::Playwright::Driver.new(app,
    browser_type: :chromium,
    headless: false
  )
end

Capybara.configure do |config|
  config.default_driver = :playwright
  config.app_host = 'https://grupordqa.service-now.com/login.do'
  config.default_max_wait_time = 10
end
