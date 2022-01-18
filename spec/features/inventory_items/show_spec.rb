require 'rails_helper'

RSpec.describe 'user sees item show page' do
  describe 'links from index page' do
    it 'displays one item with attributes' do
      item1 = InventoryItem.create!(name: 'cards', description: '1st edition card', unit_price: 4.70)

      visit inventory_items_path

      click_link item1.name

      expect(current_path).to eq(inventory_item_path(item1.id))
      expect(page).to have_content(item1.name)
      expect(page).to have_content(item1.description)
      expect(page).to have_content(item1.unit_price)
    end
  end
end
