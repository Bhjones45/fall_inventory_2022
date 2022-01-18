require 'rails_helper'

RSpec.describe 'can delete an inventory item ' do
  describe "from index page" do
    it 'can see a button to delete an item' do
      item1 = InventoryItem.create!(name: 'cards', description: '1st edition card', unit_price: 4.70)
      item2 = InventoryItem.create!(name: 'binders', description: 'Holds all of your cards', unit_price: 5.00)

      visit inventory_items_path

      expect(page).to have_button("Delete #{item1.name}")
      expect(page).to have_button("Delete #{item2.name}")
    end

    it 'can click button to delete' do
      item1 = InventoryItem.create!(name: 'Cards', description: '1st edition card', unit_price: 4.70)
      item2 = InventoryItem.create!(name: 'Binders', description: 'Holds all of your cards', unit_price: 5.00)

      visit inventory_items_path

      click_on "Delete #{item1.name}"

      expect(page).to_not have_content(item1.name)
      expect(page).to have_content(item2.name)
    end
  end

  describe 'from show page' do
    it 'can see button to delete item' do
      item1 = InventoryItem.create!(name: 'cards', description: '1st edition card', unit_price: 4.70)
      item2 = InventoryItem.create!(name: 'binders', description: 'Holds all of your cards', unit_price: 5.00)

      visit inventory_item_path(item1.id)

      expect(page).to have_button("Delete #{item1.name}")
    end

    it 'can click button to delete item' do
      item1 = InventoryItem.create!(name: 'Cards', description: '1st edition card', unit_price: 4.70)
      item2 = InventoryItem.create!(name: 'Binders', description: 'Holds all of your cards', unit_price: 5.00)

      visit inventory_item_path(item1.id)
save_and_open_page
      click_on "Delete #{item1.name}"

      expect(page).to_not have_content(item1.name)
      expect(page).to have_content(item2.name)
    end
  end
end
