require 'rails_helper'

RSpec.feature "VIN Searches", type: :feature do

  scenario 'for a valid vehicle search', js: true, driver: :selenium_chrome_headless do
    visit vehicles_path
    within '#search-form' do
      fill_in 'vin', with: '333'
      click_button 'Search'
    end

    expect(page).to have_content('found')
  end
end