require 'rails_helper'

RSpec.describe 'user can edit an inventory item' do
  describe 'user clicks button to edit item' do
    it 'shows edit page' do
      item1 = InventoryItem.create!(name: 'cards', description: '1st edition card', unit_price: 4.70)

      visit inventory_item_path(item1.id)

      click_link "Update Item"

      expect(current_path).to eq(edit_inventory_item_path)
    end
  end
end
