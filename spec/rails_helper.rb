ENV["RAILS_ENV"] ||= "test"
require File.expand_path("../../config/environment", __FILE__)
abort("The Rails environment is running in production mode!") if Rails.env.production?

require_relative "./spec_helper"
require "capybara/rspec"
require "selenium/webdriver"

Dir[Rails.root.join('spec', 'support', '**', '*.rb')].each { |f| require f }
