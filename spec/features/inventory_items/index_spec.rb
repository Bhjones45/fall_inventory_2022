# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'user sees all inventory items' do
  describe 'user visits index page' do
    it 'displays all items' do
      item1 = InventoryItem.create!(name: 'cards', description: '1st edition card', unit_price: 4.70)
      item2 = InventoryItem.create!(name: 'binders', description: 'Holds all of your cards', unit_price: 5.00)

      visit inventory_items_path
      expect(page).to have_content(item1.name)
      expect(page).to have_content(item1.description)
      expect(page).to have_content(item1.unit_price)
      expect(page).to have_content(item2.name)
      expect(page).to have_content(item2.description)
      expect(page).to have_content(item2.unit_price)
    end
  end
end
