require_relative '../../server'

require "Capybara"
require "Capybara/cucumber"
require "rspec"

RSpec.configure do |config|
  config.include Capybara::DSL, type: :feature
end

World do
  Capybara.app = Server
end