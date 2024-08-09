require 'capybara'
require 'capybara/playwright'
require 'playwright'
require 'site_prism'
require 'pry'
require_relative 'page_objects'

World(PageObjects)

HEADLESS = ENV.fetch('HEADLESS', false)

Capybara.register_driver :playwright do |app|
  if HEADLESS
    Capybara::Playwright::Driver.new(app, browser_type: :chromium, headless: true)
  else
    Capybara::Playwright::Driver.new(app, browser_type: :chromium, headless: HEADLESS, viewport: {width: 1980, height: 1080})
  end
end

Capybara.configure do |config|
  config.default_driver = :playwright
  config.app_host = 'https://www.amazon.com.br/'
  config.default_max_wait_time = 10
end
