require 'rails_helper'

RSpec.describe 'user creates a new location' do
  describe 'user fills in form' do
    it 'creates a new item' do
      visit locations_path

      click_link 'Create a new Location'

      expect(current_path).to eq(new_location_path)
      fill_in 'name', with: 'Boise'
      click_on 'Save'

      expect(page).to have_content('Boise')
      expect(current_path).to eq(locations_path)
    end
  end
end
