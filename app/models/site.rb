require 'capybara'


class Site < ActiveRecord::Base
  def self.get
    site = "https://www.todaytix.com"
    session = Capybara::Session.new(:selenium_chrome)

    session.visit site
    click "Sign Up"
    binding.pry

  end
end
