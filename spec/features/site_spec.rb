require 'rails_helper'

describe "the signin process", type: :feature do
  feature  do
    scenario do
      visit "https://www.todaytix.com"

      expect(page).to have_content "Google"
    end
  end
end
