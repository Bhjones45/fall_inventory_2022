require 'rails_helper'

RSpec.describe 'user can edit an inventory item' do
  describe 'user clicks button to edit item' do
    it 'shows edit page' do
      item1 = InventoryItem.create!(name: 'cards', description: '1st edition card', unit_price: 4.70)

      visit inventory_item_path(item1.id)

      click_on "Update"
      expect(current_path).to eq(edit_inventory_item_path(item1.id))
    end
  end

  describe 'user fills in form' do
    it 'can edit the item' do
      item1 = InventoryItem.create!(name: 'cards', description: '1st edition card', unit_price: 4.70)

      visit edit_inventory_item_path(item1.id)

      fill_in "Name", with: "Trading cards"
      fill_in "description", with: "Newest released set"
      fill_in "unit_price", with: 4.70
      
      click_on "Save"

      expect(current_path).to eq(inventory_item_path(item1.id))
      expect(page).to have_content("Trading cards")
      expect(page).to have_content("Newest released set")
    end
  end
end
