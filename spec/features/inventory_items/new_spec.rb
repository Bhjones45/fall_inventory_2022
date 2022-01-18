require 'rails_helper'

RSpec.describe 'user creates a new item' do
  describe 'user fills in form' do
    it 'creates a new item' do

      visit inventory_items_path

      click_link 'Create a new inventory item'

      expect(current_path).to eq(new_inventory_item_path)
      fill_in 'name', with: "Floating Flamingo"
      fill_in 'description', with: 'Float around in style'
      fill_in 'unit_price', with: '170.99'
      click_on "Submit"

      expect(page).to have_content('Floating Flamingo')
      expect(page).to have_content('Float around in style')
      expect(page).to have_content('170.99')
      expect(current_path).to eq(inventory_items_path)
    end
  end
end
