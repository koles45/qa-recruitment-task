require "cucumber/rails"

Capybara.register_driver :firefox do |app|
	Capybara::Selenium::Driver.new(app, browser: :firefox)
end

Capybara.configure do |config|
	config.default_driver = :firefox
	config.app_host = 'http://localhost:5000'
	config.default_max_wait_time = 10
end
