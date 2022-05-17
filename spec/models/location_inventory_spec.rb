require 'rails_helper'

RSpec.describe LocationInventory, type: :model do
  describe 'associations' do
    it { should belong_to(:inventory_item) }
    it { should belong_to(:location) }
  end
end
