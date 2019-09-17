require 'rails_helper'

describe "the signin process", type: :feature, js: :true do
  feature  do
    scenario do
      visit 'https://www.todaytix.com'

      expect(page).to have_content "New York"
    end
  end
end
