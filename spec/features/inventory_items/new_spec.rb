require 'rails_helper'

RSpec.describe 'user creates a new item' do
  describe 'user fills in form' do
    it 'creates a new item' do

      visit inventory_items_path

      click_link 'Create a new inventory item'

      expect(current_path).to eq(new_inventory_item_path)
    end
  end
end
