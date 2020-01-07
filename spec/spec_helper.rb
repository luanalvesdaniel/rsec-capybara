
require 'capybara'
require 'capybara/rspec'


RSpec.configure do |config|
  config.expect_with :rspec do |expectations|
    expectations.include_chain_clauses_in_custom_matcher_descriptions = true
  end

  config.mock_with :rspec do |mocks|
    mocks.verify_partial_doubles = true
  end

  config.shared_context_metadata_behavior = :apply_to_host_groups

  config.include Capybara::DSL

  config.before(:example) do
	page.current_window.resize_to(800,600)
  end

end

Capybara.configure do |config|
	config.default_driver = :selenium
	config.default_max_wait_time = 10
	config.app_host = 'https://training-wheels-protocol.herokuapp.com'
end